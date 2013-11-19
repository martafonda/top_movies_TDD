require_relative "../lib/list_movies.rb"

describe 'filter_movie in ListMovies' do

  xit 'should filter the movies that does not meet the passed requirements' do
    movies = [{"id"=>54, "length"=>124, "title"=>"Gigi", "year"=>"1958", "popularity"=>50}]
    movies_filtered = []
    expect(filter_movies(movies, true, 120, 77)).to eq movies_filtered
  end

end