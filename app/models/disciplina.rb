class Disciplina < ActiveRecord::Base
  belongs_to :curso, :touch => true
  belongs_to :funcao, :touch => true
  belongs_to :funcionario, :touch => true
  has_one :turma
  has_many :alunos

  validates :nome, :codigo, presence: true 
  validates :nome, :codigo, uniqueness: true
end
