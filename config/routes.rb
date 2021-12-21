Rails.application.routes.draw do

  get 'users/show'
  get 'sports/index'

  root to: 'homes#top'

  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }

  devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy"
  end

  get "users/show" => "users#show"

  get 'sports/search' => 'sports#search'

  resources :users , only:[:index]

  get 'users/coach_index/:sport_id' => 'users#coach_index', as: :users_coach_index

  get 'users/search' => 'users#search'


end
