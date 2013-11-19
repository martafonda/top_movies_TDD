require 'rubygems'
require 'json'
require 'movie'

class ListMovies
attr_accessor :movies
  
  def initialize
    @movies = []
  end

  def add_movie (movie)
    @movies << movie
  end

  def filter_movies(movies, film_time = 120, delta = 12)
    filtered_movies = []
    # filter the movies that does not meet the passed requirements
    movies.each { |movie| if ((movie['length'] - film_time).abs < delta) then filtered_movies << movie end }
  end
  
  # def order_movies
  #   # order the movies by popularity
  #   filtered_movies.each_index do |i|
  #     (filtered_movies.length - i - 1).times do |job|
  #       if filtered_movies[job]['popularity'] > filtered_movies[job + 1]['popularity']
  #         filtered_movies[job], filtered_movies[job + 1] = filtered_movies[job + 1], filtered_movies[job]
  #       end
  #     end
  #   end
  # end


end 