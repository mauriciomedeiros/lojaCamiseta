class Produto < ActiveRecord::Base
	validates :nome, :descricao, :quantidade, :preco,  presence: true
end
