Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  root 'staticpages#home'
  get 'help' =>'staticpages#help'
  get 'about'=>'staticpages#about'
  get 'contact'=>'staticpages#contact'
  resources:users
  get 'signup'=>'users#new'
  get 'login'=>'sessions#new'
  post 'login'=>'sessions#create'
  get 'logout'=>'sessions#destroy'
  get 'edit'=>'users#edit'
end