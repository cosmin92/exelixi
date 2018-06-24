Rails.application.routes.draw do

  namespace :admin do
    resource :dashboard, only: :index
    root 'dashboard#index'
  end

  scope module: 'frontend' do
    resources :home, only: :index
    root 'home#index'
  end
 
end
