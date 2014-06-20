Photogur::Application.routes.draw do
  root :to => "pictures#index"

  get 'pictures' => 'pictures#index'

  post 'pictures' => 'pictures#create'
  get 'pictures/new' => 'pictures#new' 


  get 'pictures/:id' => 'pictures#show'

  get 'pictures/:id/edit' => "pictures#edit", as: "edit_picture"
  patch 'pictures/:id' => "pictures#update"
  delete 'pictures/:id' => 'pictures#destroy', as: "delete_picture"
end