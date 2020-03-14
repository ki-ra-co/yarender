Rails.application.routes.draw do
  devise_for :users
  root 'main_todo#index'
  resources :calendar
  resources :list, only: [:new, :create, :show, :edit, :update, :destroy] do
    resources :card, except: [:index]
  end
end
