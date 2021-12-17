Rails.application.routes.draw do
  
  get 'sports/index'
  devise_for :users
  root to: 'homes#top'
  
end
