class BooksController < ApplicationController
    before_action :find_book, only: [:show, :update, :destroy]

    def index 
        @books = Book.all 
        render json: @books
    end

    def create
        @book = Book.create(book_params)
        render json: @book 
    end

    def update 
        @book.update(book_params)
        render json: @book
    end

    def destroy 
        @book.destroy

        render json: {message: "#{@book.title} deleted"}
    end

    private

    def book_params 
        params.require(:book).permit(:title, :genre)
    end

    def find_book
        @book = Book.find(params[:id])
    end

end
