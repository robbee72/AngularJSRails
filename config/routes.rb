Rails.application.routes.draw do
  devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
  devise_for :models
  get 'tee_time/index'

  get 'tee_time/new'

  get 'tee_time/create'

  get 'tee_time/destroy'

  # resources players do
  #   get :autocomplete_vistor_name, :on => collection
  # end
  resources :players, only: [:index, :create, :destroy], defaults: {format: :json}
  # root to: "players#index"
  root to: 'home#index'
end
