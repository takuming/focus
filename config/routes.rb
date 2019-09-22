Rails.application.routes.draw do
  get 'work_time/start_time'
  get 'work_time/end_time'
  get 'work_time/total_time'
  get 'card/new'
  get 'card/create'
  devise_for :users
  root 'top#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :list, only: %i(new create edit update destroy) do
    resources :card, only: %i(new create edit update destroy)
  end
end
