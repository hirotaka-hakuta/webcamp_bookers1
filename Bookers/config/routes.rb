Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 root to:"books#top"
post "books"=>"books#create"
get "books"=>"books#book"
get "books/:id"=>"books#show",as:"show_books"
get "books/:id/edit"=>"books#edit",as:"edit_books"
delete 'books/:id' => 'books#destroy', as:'destroy_books'
patch 'books/:id' => 'books#update', as: 'update_books'
end
