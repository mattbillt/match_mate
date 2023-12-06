class GroupsController < ApplicationController
  # before_action :authenticate_user!
  before_action :set_group, only: [:join, :destroy]

  def new
    @game = Game.find(params[:game_id])
    @group = Group.new
  end

  def create
    @game = Game.find(params[:game_id])
    @group = @game.groups.build(group_params)
    @group.creator = current_user

    if @group.save
      @group.users << current_user
      @chatroom = @group.create_chatroom
      redirect_to game_group_path(@game, @group), notice: 'Group was successfully created.'
    else
      render :new
    end
  end

  def edit
    @group = Group.find(params[:id])
    @game = @group.game
  end

  def update
    @group = Group.find(params[:id])
    @game = @group.game

    if @group.update(group_params)
      redirect_to game_group_path(@game, @group), notice: 'Group was successfully updated.'
    else
      render :edit
    end
  end


  # changed this because it was not finding params correctly
  def show
    @game = Game.find(params[:game_id])
    @group = Group.find(params[:id])
    @chatroom = @group.chatroom
    @message = Message.new
  end

  def join
    @group = Group.find(params[:id])
    @user_group = UserGroup.new(user: current_user, group: @group)

    if @user_group.save
      redirect_to game_group_path(@group.game, @group), notice: 'You have joined the group.'
    else
      redirect_to game_group_path(@group.game, @group), alert: @user_group.errors.full_messages.join(", ")
    end
  end

  def index
    @groups = Group.all
  end

  def leave
    @group = Group.find(params[:id])
    @group.users.delete(current_user)
    redirect_to game_group_path(@group.game, @group), notice: 'You have left the group.'
  end

  def kick
    @group = Group.find(params[:id])
    user = User.find(params[:user_id])

    if @group.creator == current_user
      @group.users.delete(user)
      redirect_to game_group_path(@group.game, @group), notice: 'User was successfully kicked.'
    else
      redirect_to game_group_path(@group.game, @group), alert: 'You are not authorized to kick users.'
    end
  end

  def destroy
    @group = Group.find(params[:id])
    @game = @group.game
    if @group.destroy
      redirect_to game_path(@game), notice: 'Group was successfully deleted.'
    else
      render :show, alert: 'Error deleting group.'
    end
  end

  private

  def group_params
    params.require(:group).permit(:name, :description)
  end

  def set_group
    @group = Group.find(params[:id])
  end
end
