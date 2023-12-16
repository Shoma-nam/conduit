Rails.application.routes.draw do
  root 'home#index' # ルートURL('/')のルーティング
  get 'about', to: 'home#about' # '/about'へのルーティング

  resources :articles # articlesリソースに対する標準的なRESTfulルーティング
end
