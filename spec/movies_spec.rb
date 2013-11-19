require_relative "../lib/list_movies.rb"

describe 'Creating Movies' do

  it 'without movie should show an empty array' do
    #
    # @movie = Movie.new
    listmovies = ListMovies.new
    #@movies = @movies.add_movie(@movie)
    expect(listmovies.movies).to eq []
  end

  it 'with one movie should show an array with a movie' do
    my_movie = {"id"=>54, "length"=>124, "title"=>"Gigi", "year"=>"1958", "popularity"=>50}
    listmovies = ListMovies.new
    listmovies.add_movie(my_movie)
    expect(listmovies.movies).to eq [my_movie]
  end

end