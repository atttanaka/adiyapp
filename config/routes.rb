Rails.application.routes.draw do

  devise_for :companies
  devise_for :admins
  devise_for :users
  root :to => 'pages#index'

  resource :adminpage do
    collection do
      get :userslist
      get :companieslist
    end
  end

  resource :companypage

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
