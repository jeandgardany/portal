class Aluno < ActiveRecord::Base
  belongs_to :user
  belongs_to :curso
  has_and_belongs_to_many :disciplinas
  has_and_belongs_to_many :turmas

  validates :nome, :matricula, :data_nascimento, :endereco, :cpf, :rg, :status, :sexo, presence: true 
  validates :matricula, :cpf, :rg, uniqueness: true
  has_attached_file :imagem, styles: { small: "64x64", med: "100x100", large: "200x200" }

  def disciplinas_nome
  	if self.disciplinas.blank?
  		"Não Cadastrado"
  	else 
  		self.disciplinas.nome
  	end
  end
end
