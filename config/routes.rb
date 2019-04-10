Rails.application.routes.draw do
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root to:"page#index"
    get "components/styles"
    get "components/index"

    
    resources :blogs


    resources :admin do
    	root to:"pages#index"
        resources :blogs
    end


end
