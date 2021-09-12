Rails.application.routes.draw do
  
  get '/project' ,to: 'project#index' 
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :leads do
    member do
      get 'getproject' , to: 'leads#getproject' 
      post 'getproject' , to: 'leads#postproject'
    end
   resources :phases do 
      member do
        get 'acceptComment', to: 'phases#acceptComment'
        get 'buttonview' , to: 'phases#buttonview'
        get 'addengineer' , to: 'phases#addengineer'
        post 'addengineer', to: 'phases#postengineer'

      end
    end
  end 
  devise_for :admin_users
  devise_for :users

  root "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
