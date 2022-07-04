Rails.application.routes.draw do
   root to: 'tasks#index'
   resources :tasks, only: [:new, :create, :show, :edit, :update, :destroy]
end
