Rails.application.routes.draw do

 root 'people#index'

 get '/people', to: 'people#index'
 get 'people/new', to: 'people#new'
 get 'people/:id', to: 'people#detail'
 get 'people/:id/edit', to: 'people#edit'
 patch '/people/:id', to: 'people#update', as: :person
 post 'people', to: 'people#create'
  
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"
end
