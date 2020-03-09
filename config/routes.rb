Rails.application.routes.draw do
  get 'users/show'
  get 'homes/top'
  get 'homes/about'

  root to: "homes#top"

  devise_for :users, :controllers => {
   :registrations => 'users/registrations',
   :sessions => 'users/sessions'
  }

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books

end
