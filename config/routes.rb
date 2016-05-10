Rails.application.routes.draw do

  resources :binge_series do
    resources :seasons do
      resources :binge_episodes
    end
  end

  devise_for :users

  root 'binge_series#index'
end
