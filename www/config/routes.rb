Rails.application.routes.draw do
  resources :patents
  devise_for :users

  root "application#ok"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
