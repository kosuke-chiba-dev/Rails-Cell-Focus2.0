Rails.application.routes.draw do
  devise_for :users, skip: [ :sessions, :registrations, :passwords, :confirmations, :unlocks, :omniauth_callbacks ]

  devise_scope :user do
    get    "users/sign_in",  to: "devise/sessions#new",     as: :new_user_session
    post   "users/sign_in",  to: "devise/sessions#create",  as: :user_session
    delete "users/sign_out", to: "devise/sessions#destroy", as: :destroy_user_session

    get    "users/sign_up",  to: "devise/registrations#new",    as: :new_user_registration
    post   "users",          to: "devise/registrations#create", as: :user_registration
  end

  authenticated :user do
    root to: redirect("/boards"), as: :authenticated_root
  end
  unauthenticated do
    root to: redirect("/users/sign_in"), as: :unauthenticated_root
  end

  get "up" => "rails/health#show", as: :rails_health_check

  resources :boards do
    resources :cards do
      resources :comments, only: [ :create, :destroy ]
    end
  end

  resource :profile, only: [ :show, :new, :create, :edit, :update ]

  resources :users, only: [] do
    resource :profile, only: :show, module: :users
  end
end
