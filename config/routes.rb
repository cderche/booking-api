Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :v1 do
    post 'auth', to: 'users#auth'
    # resources :users
  end

end
