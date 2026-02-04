Rails.application.routes.draw do
  root to: "pages#home"
  get "up" => "rails/health#show", as: :rails_health_check

  resources :user

  resources :consultations
  post 'consult/category', to: 'consultations#chosen_category', as: :chosen_category

  resources :bfrandomizers do
    get :roll, on: :collection
  end
  # maybe later on: :member if its linked to users!
  
  resources :huntrandomizers do
    get :roll, on: :collection
  end

  get "impressum", to: "pages#impressum"
  get "faq", to: "pages#faq"

end
