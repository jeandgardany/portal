class Turma < ActiveRecord::Base
  belongs_to :funcionario
  belongs_to :disciplina
  has_and_belongs_to_many :alunos

  validates :codigo, :turno, :semestre, :capacidade, presence: true 
  validates :codigo, uniqueness: true

end
