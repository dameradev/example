Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  resources :posts, except: [:show]

  get 'post/:id', to: 'posts#show', as: 'post_show'

  get 'cooking', to: 'posts#cooking'

  resources :high_scores
  get 'about-me' , to: 'pages#about'
  get 'contact', to:'pages#contact'

  root to: "pages#home"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
