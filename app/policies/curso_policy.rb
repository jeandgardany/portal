class CursoPolicy < ApplicationPolicy

	def index?
  		user.administrador? or user.coordenador?
  	end
  
  class Scope < Scope
    def resolve
      scope
    end
  end
end
