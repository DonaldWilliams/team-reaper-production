class MatchesController < ApplicationController

  def index
    @matches = Profile.all
    @profile = current_user.profile
  end

  def show
    @match = Profile.where(user_id: params[:id])
  end

end
