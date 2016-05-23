class AlunoPolicy < ApplicationPolicy
  def index?
  	user.administrador? or user.atendente?
 end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
