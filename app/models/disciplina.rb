class Disciplina < ActiveRecord::Base
  belongs_to :curso
  belongs_to :funcao
  belongs_to :funcionario
end
