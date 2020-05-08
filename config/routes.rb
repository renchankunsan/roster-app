Rails.application.routes.draw do
  #deviseをuserモデルに適用する #usersのregistrations,sessoinsコントローラに変更
  devise_for :users, controllers:{confirmations:'users/confirmations',
                                  passwords:'users/passwords',
                                  registrations:'users/registrations',
                                  sessions:'users/sessions',
                                  unlocks:'users/unlocks'}

  #rosters
  get "/" => "rosters#top" #トップページ
  get "/rosters" => "rosters#index" #一覧
  post "/rosters/index" => "rosters#index" #検索
  get "/rosters/:id/show" => "rosters#show" #詳細
  get "/rosters/new" => "rosters#new" #作成
  post "/rosters/create" => "rosters#create"
  get "/rosters/:id/edit" => "rosters#edit" #更新
  patch "/rosters/:id" => "rosters#update"
  delete "/rosters/:id" => "rosters#destroy" #削除
end

#resources :(モデル名) でルーティングが一括構築できる