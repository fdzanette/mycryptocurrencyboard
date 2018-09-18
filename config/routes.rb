Rails.application.routes.draw do
  devise_for :users
  root to: 'cryptos#index'
  resources :cryptos, only: [:new, :create, :show, :destroy] do
    collection do
      get 'user_portfolio'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
