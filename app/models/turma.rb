class Turma < ActiveRecord::Base
  belongs_to :disciplina
  belongs_to :aluno
end
