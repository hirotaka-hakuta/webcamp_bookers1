class BooksController < ApplicationController

   protect_from_forgery :except => [:create]

  def top
  end

  def index
      @books=Book.all
      @book=Book.new
  end
 def create

      @book = Book.new(book_params)

    if @book.save
      flash[:notice]="Book was successfully created"
      redirect_to show_books_path(@book.id)
    else

      @books=Book.all
      render "index"
    end
  end

  def show
      @book=Book.find(params[:id])
  end

  def edit
      @book=Book.find(params[:id])

  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    flash[:notice]="Book was successfully destroyed"
    redirect_to books_path
  end

   def update
       @book = Book.find(params[:id])


    if @book.update(book_params)
      flash[:notice]="Book was successfully updated"
      redirect_to books_path(@book.id)
    else

      @books=Book.all
      render "edit"
      end
end
  private
  def book_params
      params.require(:book).permit(:title, :body)
  end

end
