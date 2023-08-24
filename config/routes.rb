Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }
  # resources :employees do
  #   # it will define the member route
  #   member do
  #     get :personal_details
  #   end

  #   #it will define the collection route
  #   collection do
  #     get :collection_route
  #   end

  #   get :without_specify_route
  # end
  root "welcome#index"
  resources :employees
  get "/about" => "welcome#about"

  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end

  # namespace routing!!! ex. /admin/staff
  # mostly used
  # namespace :admin do
  #   resources :staff
  # end
  # we can also use scope instead of namespace
end
