Rails.application.routes.draw do
  resources :projects
  namespace :api do
    post 'coverages/:tag' => 'coverages#create'
  end
end
