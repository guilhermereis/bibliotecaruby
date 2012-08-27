class Livro < ActiveRecord::Base
  belongs_to :pessoa
  attr_accessible :autor, :descricao, :titulo
end
