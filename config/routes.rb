Rails.application.routes.draw do

  resources :articlemanage

  match '/postnewarticle', to: 'articlemanage#create', via: 'post'
  resources :article

  devise_for :companies
  devise_for :admins
  devise_for :users
  root :to => 'pages#index'

  resource :adminpage do
    collection do
      get :userslist
      patch :userspermit
      get :user_articlemanage_list
      patch :user_articlemanage_permit

      get :companieslist
      patch :companiespermit
      get :company_articlemanage_list
      patch :company_articlemanage_permit
    end
  end

  resource :companypage

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
