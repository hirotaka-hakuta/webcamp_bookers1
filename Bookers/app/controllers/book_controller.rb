class BookController < ApplicationController

def new
 @book=Book.new
end
def edit
end
def create
end
def destroy
     book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
end
def books

  @books=Book.all
  book=Book.new(book_params)
  book.save

end
def index
      @books=Book.all
end
def show
@book=Book.find(params[:id])
end
def update
      book = Book.find(params[:id])
    book.update(book_params)
    redirect_to books_path(books.id)
end
  private
def book_params
  # params.require(:book).permit(:title, :body)
end

end
