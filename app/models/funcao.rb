class Funcao < ActiveRecord::Base
	has_one :funcionario

	validates :cargo, presence: true 
  	validates :cargo, uniqueness: true
end
