class GroupsController < ApplicationController
  # before_action :authenticate_user!
  before_action :set_group, only: [:join]

  def new
    @game = Game.find(params[:game_id])
    @group = Group.new
  end

  def create
    @game = Game.find(params[:game_id])
    @group = @game.groups.build(group_params)
    @group.user = current_user

    if @group.save
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

  def show
    @group = Group.find(params[:id])
    @game = @group.game
  end

  def join
    @user_group = UserGroup.new(user: current_user, group: @group)

    if @user_group.save
      redirect_to game_group_path(@group.game, @group), notice: 'You have joined the group.'
    else
      redirect_to game_group_path(@group.game, @group), alert: 'Unable to join the group.'
    end
  end

  private

  def group_params
    params.require(:group).permit(:name)
  end

  def set_group
    @group = Group.find(params[:id])
  end
end
