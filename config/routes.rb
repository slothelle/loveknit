Loveknit::Application.routes.draw do
  resources :users do
    resources :patterns
  end

  resources :sessions, only: [:new, :create, :destroy]

  match '/signup',  to: 'users#new'
  match '/login',   to: 'sessions#new'
  match '/logout',  to: 'sessions#destroy', via: :delete

  root :to => 'high_voltage/pages#show', :id => 'home'

  # Using High Voltage
  # get 'pages/home' => 'high_voltage/pages#show', :id => 'home'
end
