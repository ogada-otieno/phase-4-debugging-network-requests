class MoviesController < ApplicationController
  
  def index
    movies = Movie.all
    render json: movies
  end

  def create
    movie = Movie.new(movie_params)
    render json: movie, status: 201
  end

  private

  def movie_params
    params.permit(:title, :year, :length, :director, :description, :poster_url, :category, :discount, :female_director)
  end

end
