class MoviesController < ApplicationController
  before_action :find_movie, only: [:edit, :update, :show, :destroy]


  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to movies_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @movie.update(movie_params)
      redirect_to movies_path
    else
      render :edit
    end
  end

  def show
  end

  def destroy
    @movie.destroy
    redirect_to movies_path
  end


  private
  def movie_params
    params.require(:movie).permit(:title, :realeased_at)
  end

  def find_movie
    @movie = Movie.find(params[:id])
  end

end
