Rails.application.routes.draw do
  root to: "pages#home"
  get "up" => "rails/health#show", as: :rails_health_check

  resources :user
  resources :consultations
  post 'consult/category', to: 'consultations#select_category'
  # is this post request neccessary?

end
