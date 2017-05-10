Rails.application.routes.draw do
  devise_for :admins
  resources :issus
  resources :studets, param: :sid
  resources :allbks
  devise_for :studs
  resources :bks, param: :isbn do
  	collection do
  		get 'search'
  	end
  end
  get 'welcome/index', to: "welcome#index"
  root 'home#index' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
