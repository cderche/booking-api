Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :v1 do
    post 'auth', to: 'authentication#auth'
    resources :frequencies, only: :index
    resources :services, only: :index
  end

end
