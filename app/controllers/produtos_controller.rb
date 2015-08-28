class ProdutosController < ApplicationController
	def index
		## @ serve para dizer que a variável é de instancia e estarão disponívels para visualização em todo o site.
		@produtos_order_nome = Produto.order :nome
		@produtos_order_preco = Produto.order(:preco).limit 2
	end

	def new
		@produto = Produto.new
	end

	def busca
		@nome_da_busca = params[:nome]
		@produtos = Produto.where "nome like ?", "%#{@nome_da_busca}%"
	end

	def create
		## O método require faz a solicitção do produto.
		valores = params.require(:produto).permit :nome, :descricao, :quantidade, :preco
		@produto = Produto.new valores
		if @produto.save
			flash[:notice] = "Produto salvo com sucesso!"
			redirect_to root_url
		else
			render :new
		end
	end

	def destroy
		id = params[:id]
		Produto.destroy id
		redirect_to root_url
	end

end
