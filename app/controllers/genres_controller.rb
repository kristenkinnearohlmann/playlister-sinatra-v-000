class GenresController < ApplicationController
<<<<<<< HEAD

  get '/genres' do
    @genres = Genre.all

    erb :'genres/index'
  end

  get '/genres/:slug' do
    @genre = Genre.find_by_slug(params[:slug])

    erb :'genres/show'
  end
  
=======
>>>>>>> 7d85194ca85fc67f59965ff375c2382b7415acdb
end
