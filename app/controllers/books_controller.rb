class BooksController < ApplicationController

  def search
    if params[:keyword]
      books = RakutenWebService::Books::Book.search(title: params[:keyword])

      @books_hash = []
      books.each do |book|
        @books_hash.push(book)
      end
      @books = Kaminari.paginate_array(@books_hash).page(params[:page]).per(9)
    end
  end
  
end
