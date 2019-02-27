class BookController < ApplicationController

  def list
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
   @book = Book.new
   @subjects = Subject.all
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to :action => 'list'
    else
      @subjects=Subject.all
      render "Failed to save!!";
    end

  end

def book_params
params.permit(:name, :price, :description, :subject_id)
end


end
