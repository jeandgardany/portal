class ControleUsuariosController < ApplicationController
	before_action :authenticate_user!

  def index
  	@users = User.all.page(params['page']).per(5)
  	authorize @users

  end
end
