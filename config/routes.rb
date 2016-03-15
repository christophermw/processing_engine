Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'projects#index'

  get 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'

  resources :projects do
    member do
      get :tags
      get :user_profile
      get :triggers
      get :data_sync
      get :publish
      post :update_tags
      post :update_profile_fields
      post :update_triggers
    end
    resources :tags
    resources :fields
    resources :triggers
  end

  resources :tags do
    member do
      get :track
      post :track
      get :test
    end
  end

  resources :profiles
end
