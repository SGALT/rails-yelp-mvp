Rails.application.routes.draw do
  resources :restaurants, only: %i[new create index show] do
    resources :reviews, only: %i[new create]
  end
end
