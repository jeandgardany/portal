class AlunoPolicy < ApplicationPolicy
  def index?
  	user.administrador? or user.atendente?
  end
  def show?
  	user.administrador? or user.atendente?
  end
  def edit?
  	user.administrador? or user.atendente?
  end
  def update?
  	user.administrador? or user.atendente?	
  end
  def destroy?
  	user.administrador?
  end
  
  class Scope < Scope
    def resolve
      scope
    end
  end
end
