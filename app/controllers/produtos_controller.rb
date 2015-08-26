class ProdutosController < ApplicationController
	def index
		## @ serve para dizer que a variável é de instancia e estarão disponívels para visualização em todo o site
		@produtos_order_nome = Produto.order :nome
		@produtos_order_preco = Produto.order(:preco).limit 2
	end
end
