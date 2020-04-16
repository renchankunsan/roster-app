Rails.application.routes.draw do
  #rosters
  get "/" => "rosters#index" #一覧
  post "/rosters/index" => "rosters#index" #検索
  get "/rosters/:id/show" => "rosters#show" #詳細
  get "/rosters/new" => "rosters#new" #作成
  post "/rosters/create" => "rosters#create"
  get "/rosters/:id/edit" => "rosters#edit" #更新
  patch "/rosters/:id" => "rosters#update"
  delete "/rosters/:id" => "rosters#destroy" #削除
  
  #categories
  
  #users
  get "/users/signup" => "users#new"
  post "/users/create" => "users#create"
  get "/users/login" => "users#login"
  post "/users/check" => "users#check"
  get "/users/:id" => "users#index"
  get "/users/:id/show" => "users#show"
  get "/users/:id/edit" => "users#edit"
  patch "/users/:id" => "users#update"
  delete "/users/:id" => "users#destroy"
end

#resources :(モデル名) でルーティングが一括構築できる