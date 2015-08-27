Rails.application.routes.draw do
  ## get "[URI]" => "[Controller]#[nome da página]"
  ## get "produtos" => "produtos#index"
  root "produtos#index"
  ## get "/produtos/new" => "produtos#new"
  ## post "/produtos" => "produtos#create"
  ## delete "produtos/:id" => "produtos#destroy", as: :produto
  ## todos os comentados vão ser criados pelo resources
  resources :produtos, only: [:new, :create, :destroy]
  get "/produtos/busca" => "produtos#busca", as: :busca_produto
end
