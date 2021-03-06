Rails.application.routes.draw do

 root 'people#index'

 get '/people', to: 'people#index', as: "people"
 get 'people/new', to: 'people#new'
 get 'people/:id', to: 'people#detail', as: "detail"
 get 'people/:id/edit', to: 'people#edit' , as: "edit"


 patch '/people/:id', to: 'people#update', as: :person
 post 'people', to: 'people#create'
 delete 'people/:id', to: 'people#destroy', as: "destroy"

end
