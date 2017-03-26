Rails.application.routes.draw do

  get 'articles/index'

  get 'articles/new'

  get 'articles/edit'

  get 'articles/destroy'

  devise_for :companies
  devise_for :admins
  devise_for :users
  root :to => 'pages#index'

  resource :adminpage do
    collection do
      get :userslist
      patch :userspermit
      get :companieslist
      patch :companiespermit
    end
  end

  resource :companypage

  resources :articlemanages

end
