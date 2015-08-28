class Produto < ActiveRecord::Base
	validates :nome, :descricao, :quantidade, :preco,  presence: true
	validates :nome, length: { minimum: 5 }
end
