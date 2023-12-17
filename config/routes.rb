Rails.application.routes.draw do
  devise_for :users
  root 'articles#index' # ルートURL('/')のルーティング
  resources :articles # articlesリソースに対する標準的なRESTfulルーティング
end
