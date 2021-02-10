Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 root to:"book#top"
post "books/:id"=>"book#create"
get "books"=>"book#books"
get "books/:id"=>"book#show"
get "books/:id/edit"=>"book#edit",as:"edit_books"
delete 'books/:id' => 'book#destroy', as:'destroy_books'
end
