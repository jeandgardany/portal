class Aluno < ActiveRecord::Base
  belongs_to :user
  has_one :turma
  has_one :disciplina
  
end
