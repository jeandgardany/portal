class FuncionarioPolicy < ApplicationPolicy
  def index?
  	user.administrador?
  end
  
  class Scope < Scope
    def resolve
      scope
    end
  end
end
