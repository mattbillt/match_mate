class GroupsController < ApplicationController
  before_action :authenticate_user!

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

  private

  def group_params
    params.require(:group).permit(:name)
  end
end
