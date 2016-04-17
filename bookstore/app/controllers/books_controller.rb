class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]


  def index
    @books = Book.all
  end

  # GET /books/1
  # GET /books/1.json
  def show
    p params
    @book = Book.find(params[:id])
    @cart_action = @book.cart_action current_user.try :id
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:title, :author, :release_year, :price, :description)
    end
end
