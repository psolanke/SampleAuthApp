Rails.application.routes.draw do
  get 'home' => 'home#index', :as => :home
  get 'admin_dashboard/index', :as => :admin_dashboard
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' } do
    delete 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  end
  root to: 'visitors#index', :as => :visitors
end
