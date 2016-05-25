class Curso < ActiveRecord::Base
	belongs_to :disciplina

    validates :nome, :codigo, :duracao, :tipo, presence: true 
	validates :codigo, uniqueness: true
end
