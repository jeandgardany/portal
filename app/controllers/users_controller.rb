class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all.page(params['page']).per(5)
  end

  def show
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to :back, :alert => "Accesso negado!."
    end
  end

end
