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

  get 'search' => 'sports#search'


end
