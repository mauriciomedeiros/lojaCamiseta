class ProdutosController < ApplicationController
	def index
		## @ serve para dizer que a variável é de instancia e estarão disponívels para visualização em todo o site.
		@produtos_order_nome = Produto.order :nome
		@produtos_order_preco = Produto.order(:preco).limit 2
	end

	def create
		## O método require faz a solicitção do produto.
		valores = params.require(:produto).permit :nome, :descricao, :quantidade, :preco
		Produto.create valores
		redirect_to root_url
	end

	def destroy
		id = params[:id]
		Produto.destroy id
		redirect_to root_url
	end

end
