Rails.application.routes.draw do

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

  get "user/my_page" => "users#my_page"

  get 'sports/search' => 'sports#search'

  get 'users/coach_index/:sport_id' => 'users#coach_index', as: :users_coach_index

  get 'users/coach_search' => 'users#coach_search'

  get 'users/search' => 'users#search'

  resources :users, only:[:index,:show]

  resources :matchings, only:[:index, :new, :create, :show, :update]

  get 'movies/complete' => 'movies#complete'

  resources :movies, only:[:new, :create, :index, :show, :edit, :update]

  resources :messages, only:[:create]

  resources :coachings, only:[:create, :edit, :update]

  resources :coach_evaluations, only:[:create]


end
