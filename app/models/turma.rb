class Turma < ActiveRecord::Base
  belongs_to :funcionario
  belongs_to :disciplina
  has_many :alunos

  validates :codigo, :turno, :semestre, :capacidade, presence: true 
  validates :codigo, uniqueness: true

end
