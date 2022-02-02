class Api::MoviesController < ApplicationController

  before_action :set_theater
  before_action :set_movie, only: [:show, :update, :destroy]

  def index
    render json: @theater.movie.all
  end

  def show
    render json: @movies
  end

  def create
    @movie = @theater.movie.new(movie_params)
    if (@movie.save)
      render json: @movie
    else
      render json: {error: @movie.error}, status: :unprocessable_entity
    end
  end

  def update
    if (@movie.update(movie_params))
      render json: @movie
    else
      render json: {error: @movie.error}, status: :unprocessable_entity
    end
  end

  def destroy
    render json: @movie.destroy
  end

  private

  def set_theater
    @theater = Theater.find(params[:id])
  end

  def set_movie
    @movie = @theater.movie.find(params[:id])
  end

  def movie_params
    params.require(:theater).permit(:name, :city, :state)
  end

end
