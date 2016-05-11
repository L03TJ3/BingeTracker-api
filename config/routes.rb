Rails.application.routes.draw do

  get 'hello_world', to: 'hello_world#index'
  resources :binge_series do
    namespace :season, path: ':season', module: nil do
      resources :binge_episodes, controller: 'binge_episodes'
    end
  end

  devise_for :users

  root 'binge_series#index'
end
