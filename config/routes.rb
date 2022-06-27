Rails.application.routes.draw do
  get 'tests/index'
   root to: 'tasks#index'
   resources :tasks, only: [:new, :create, :show, :edit, :update, :destroy]
end
