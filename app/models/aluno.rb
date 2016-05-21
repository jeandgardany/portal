class Aluno < ActiveRecord::Base
  belongs_to :user
  has_many :turma
  
end
