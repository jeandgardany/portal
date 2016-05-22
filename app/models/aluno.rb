class Aluno < ActiveRecord::Base
  belongs_to :user
  belongs_to :curso
  has_many :disciplinas
  belongs_to :turma

  validates :nome, :matricula, :data_nascimento, :endereco, :cpf, :rg, :status, :sexo, presence: true 
  validates :matricula, :cpf, :rg, uniqueness: true

  def disciplinas_nome
  	if self.disciplinas.blank?
  		"Não Cadastrado"
  	else 
  		self.disciplinas.nome
  	end
  end
end
