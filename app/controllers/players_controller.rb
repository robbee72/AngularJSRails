class PlayersController < ApplicationController
  respond_to :json
#  autocomplete :player, :name, :display_value => :funky_method
  def index
    respond_to do |format|
      format.json { render json: Player.all }
      format.html
    end
  end

  def create
    respond_with Player.create(player_params)
  end

  def destroy
    respond_with Player.destroy(params[:id])
  end

  def Show
    @user = User.first
  end
private
  def player_params
    params.require(:player).permit(:first_name, :last_name, :reason)
  end
end
