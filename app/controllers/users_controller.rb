class UsersController < ApplicationController
  load_and_authorize_resource
  before_action :set_user, only: [:show,:edit,:create,:update]

  def index
    if current_user.has_role?(:admin)
      @users = User.all
    else
      # Just For now work on better security
      flash[:error] = "You don't have correct permission to view this page"
      redirect_to root_path
    end
  end

  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:first_name, :last_name,
        profile_attributes: [:id, :pet, :pet_type, :quiet, :noisy, :clean, :messy,
                             :kind_of_clean, :party, :drink, :smoke, :study, :major, :user_id])
    end

end
