Rails.application.routes.draw do
  #deviseをuserモデルに適用するぞ
  devise_for :users

  #rosters
  get "/" => "rosters#index" #一覧
  post "/rosters/index" => "rosters#index" #検索
  get "/rosters/:id/show" => "rosters#show" #詳細
  get "/rosters/new" => "rosters#new" #作成
  post "/rosters/create" => "rosters#create"
  get "/rosters/:id/edit" => "rosters#edit" #更新
  patch "/rosters/:id" => "rosters#update"
  delete "/rosters/:id" => "rosters#destroy" #削除
end

#resources :(モデル名) でルーティングが一括構築できる