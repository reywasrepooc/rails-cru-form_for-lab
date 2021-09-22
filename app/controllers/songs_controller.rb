class SongsController < ApplicationController
  
  def index
    @songs = Song.all
  end

  def show
    @song = song_params
  end

  def update
    @song = song_params
    @song.update(new_song_params)
    redirect_to song_path(@song)
  end

  def create
    @song = Song.new(new_song_params)
    @song.save
    redirect_to song_path(@song)
  end

  def edit
    @song = song_params
  end

  def new
    @song = Song.new
  end


  private

  def song_params
    Song.find(params[:id])
  end

  def new_song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end


    
end