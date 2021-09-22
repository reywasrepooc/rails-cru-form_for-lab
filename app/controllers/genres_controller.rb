class GenresController < ApplicationController


  def index
    @genres = Genre.all
  end

  def show
    @genre = genre_params
  end

  def update
    @genre = genre_params
    @genre.update(new_genre_params)
    redirect_to genre_path(@genre)
  end

  def create
    @genre = Genre.new(new_genre_params)
    @genre.save
    redirect_to genre_path(@genre)
  end

  def edit
    @genre = genre_params
  end

  def new
    @genre = Genre.new
  end



# private

  def genre_params
    Genre.find(params[:id])
  end

  def new_genre_params
    params.require(:genre).permit(:name)
  end
end
