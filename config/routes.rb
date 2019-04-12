Rails.application.routes.draw do
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root to:"page#index"
    get "components/blog"
    namespace :admin do
        resources :blogs
    end


end
