Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  resources :topics do
    resources :articles
  end
  resources :articles
end

get 'welcome/myaccount'
