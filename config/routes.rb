Rails.application.routes.draw do
  get 'pages/info'
  resources :wows
  root to: redirect('/slambinita')
  resources :slambinita
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
