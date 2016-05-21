class Turma < ActiveRecord::Base
  belongs_to :disciplina
  has_many :alunos
end
