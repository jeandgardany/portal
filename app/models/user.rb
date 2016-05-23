class User < ActiveRecord::Base
  enum role: [:aluno, :atendente, :coordenador, :professor, :administrador ]
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :funcionario
  has_one :alunos

end
