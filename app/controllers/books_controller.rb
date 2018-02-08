class BooksController < ApplicationController
  def index
    @books = Book.all
  end
  def create
    nouv_livre = Book.new
    nouv_livre.title = params[:title]
    nouv_livre.save
    redirect_to "/books"
  end
  def show
    @book=Book.find(params[:id])
  end
  def update
  Book.find(params[:id]).update title: params[:title]
  redirect_to "/books/#{params[:id]}"
  end
  def destroy
    Book.find(params[:id]).destroy
    redirect_to "/books"
  end
end
