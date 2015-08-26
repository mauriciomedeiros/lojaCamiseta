Rails.application.routes.draw do
## get "[URI]" => "[Controller]#[nome da página]"
  ##get "produtos" => "produtos#index"
  root "produtos#index"
  get "/produtos/new" => "produtos#new"
  post "/produtos" => "produtos#create"
end
