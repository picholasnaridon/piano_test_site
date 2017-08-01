Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/show'
  root 'welcome#index'
  resources :topics do
    resources :articles
  end
  resources :articles
end
