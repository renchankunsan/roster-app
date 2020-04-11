Rails.application.routes.draw do
  #一覧
  get "/" => "rosters#index"
  #検索
  post "/rosters/index" => "rosters#index"
  #詳細
  get "/rosters/:id/show" => "rosters#show"
  #作成
  get "/rosters/new" => "rosters#new"
  post "/rosters/create" => "rosters#create"
  #更新
  get "/rosters/:id/edit" => "rosters#edit"
  patch "/rosters/:id" => "rosters#update"
  #削除
  delete "/rosters/:id" => "rosters#destroy"
  
  #resources :(モデル名) でルーティングが一括構築できる
end
