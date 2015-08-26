class ProdutosController < ApplicationController
	def index
		## @ serve para dizer que a variável é de instancia e estarão disponívels para visualização em todo o site.
		@produtos_order_nome = Produto.order :nome
		@produtos_order_preco = Produto.order(:preco).limit 2
	end

	def create
		## O método require faz a solicitção do produto.
		valores = params.require(:produto).permit!
		Produto.create valores
	end
end
