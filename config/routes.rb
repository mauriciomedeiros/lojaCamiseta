Rails.application.routes.draw do
## get "[URI]" => "[Controller]#[nome da página]"
  get "produtos" => "produtos#index"
end
