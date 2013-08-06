class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @promotions = @user.promotions(current_user)
  end
end
