Rails.application.routes.draw do
  get '/song/html' , to: 'songs#html'
  get '/song/json' , to: 'songs#showjson'
  resources :songs
  resources :beta
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/user/get_hello' , to: 'users#get_demo', as: :demo_user
  # get '/user/get_params/:v1' , to: 'users#get_demo2', as: :demo_user_2

  # get '/users/get_demo' , :to => 'users#get_demo', :as => :demo_user
end
