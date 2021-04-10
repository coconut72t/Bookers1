Rails.application.routes.draw do
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "Books" => "books#index",as: "books"
  get "Books/:id" => "books#show", as: "book"
  post "Books" => "books#create"
  get "Books/edit/:id" => "books#edit", as: "edit_book"
  patch "Books/edit/:id" => "books#update", as: "update_book"
  delete "Books/:id" => "books#destroy", as: "destroy_book"
end