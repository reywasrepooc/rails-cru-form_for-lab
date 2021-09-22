class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
    @artist = artist_params
  end

  def update
    @artist = artist_params
    @artist.update(art_params)
    redirect_to artist_path(@artist)
  end

  def create
    @artist = Artist.new(art_params)
    @artist.save
    redirect_to artist_path(@artist)
  end

  def new
    @artist = Artist.new
  end


  def edit
    @artist = artist_params
  end


#   private

  def artist_params
    Artist.find(params[:id])
  end

  def art_params
    params.require(:artist).permit(:name, :bio)
  end
end
