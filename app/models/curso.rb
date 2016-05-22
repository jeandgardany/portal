class Curso < ActiveRecord::Base
	belongs_to :disciplina, :touch => true

    validates :nome, :codigo, :duracao, :tipo, presence: true 
	validates :codigo, uniqueness: true
end
