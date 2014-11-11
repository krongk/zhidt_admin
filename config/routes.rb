Rails.application.routes.draw do

  resources :resources

  resources :sites do 
    resources :site_package_flow_comments
    resources :site_package_flows
    
  end
  resources :site_packages

  resources :notices
  resources :flows
  resources :packages do 
    resources :flows
  end

  root to: 'visitors#index'
  devise_for :users
  resources :users
end
