Rails.application.routes.draw do
  get 'log/new'
  get 'log/cleate'
  get 'log/update'
  get 'log/destroy'

  # post 'lists/:list_id/cards/:card_id/log/start_time' => 'card#start_time'
  # post 'lists/:list_id/cards/:card_id/log/end_time' => 'card#end_time'
  # get  'lists/:list_id/cards/:card_id/log/total_time'  => 'card#edit'

  post 'cards/:card_id/log/start_time' => 'log#start_time'
  post 'cards/:card_id/log/end_time' => 'log#end_time'
  get  'cards/:card_id/log/total_time'  => 'log#edit'

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
