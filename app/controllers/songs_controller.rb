class SongsController < ApplicationController

  get '/songs' do
    @songs = Song.all
<<<<<<< HEAD

    erb :'songs/index'
  end

  post '/songs' do

    song = Song.create(name: params[:song][:name])
    if !params[:song][:artist].empty?
      artist = Artist.new(name: params[:song][:artist])
      if Artist.find_by_slug(artist.slug)
        artist = Artist.find_by_slug(artist.slug)
      else
        artist.save
      end
    end

    song.artist = artist
    song.save

    redirect "/songs/#{song.slug}"
  end

  get '/songs/new' do

    erb :'songs/new'
  end

  get '/songs/:slug' do
    @song = Song.find_by_slug(params[:slug])
    @artist = @song.artist
    @genres = @song.genres

    erb :'songs/show'
=======
    binding.pry
    erb :'index'
>>>>>>> 7d85194ca85fc67f59965ff375c2382b7415acdb
  end
end
