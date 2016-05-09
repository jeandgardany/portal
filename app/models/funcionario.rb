class Funcionario < ActiveRecord::Base
  belongs_to :user
  belongs_to :funcao
end
