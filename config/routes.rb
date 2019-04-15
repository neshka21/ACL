Rails.application.routes.draw do
  devise_for :users
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root to:"page#index"
    get "components/blog"
    get "page/login"

    namespace :admin do
        resources :blogs
        resources :services
    end
    



end
