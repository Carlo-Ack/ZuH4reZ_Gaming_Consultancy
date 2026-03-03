Rails.application.routes.draw do
  # Initial Websites root to home
  root to: "pages#home"

  # Health check 
  get "up" => "rails/health#show", as: :rails_health_check

  # Provide complete set of routes for a user
  resources :user

  # Provide route to consultation based of which category chosen
  resources :consultations
  post 'consult/category', to: 'consultations#chosen_category', as: :chosen_category

  # Provide roll route for bfrandomizers to be able to save it later on
  # maybe later on: :member if its linked to users!
  resources :bfrandomizers do
    get :roll, on: :collection
  end
  
  # Provide roll route for huntrandomizers to be able to save it later on 
  resources :huntrandomizers do
    get :roll, on: :collection
  end

  # Provide routes for Impressum and FAQ
  get "impressum", to: "pages#impressum"
  get "faq", to: "pages#faq"

end
