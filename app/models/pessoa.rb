class Pessoa < ActiveRecord::Base
  attr_accessible :cpf, :nome, :telefone
  validates :nome,  :presence => true
  validates :cpf,  :presence => true

  has_many :livros
	
end
