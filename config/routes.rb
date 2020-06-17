Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :users, only: [:new, :create, :edit, :show, :index]
  resources :appointments, only: [:new, :show, :index]

  patch "/sessions/page_view_reset", to: "sessions#page_view_reset", as: "reset_session";
  delete "/sessions/logout", to: "sessions#logout", as: "logout"
  get "/sessions/new", to: "sessions#new", as: "new_login"
  post "/sessions", to: "sessions#create", as: "login"
  
end
