class MealsController < ApplicationController
  before_action :find_meal, only: [:edit, :show, :update, :destroy]

  def index
    @meals = Meal.all
  end
  def new
    @meal = Meal.new
  end
  def create
    @meal = Meal.new(meal_params)
    if @meal.save
      redirect_to meals_path
    else
      render :new
    end
  end
  def edit
  end
  def update
    if @meal.update
      redirect_to meals_path
    else
      render :edit
    end
  end
  def show
  end
  def destroy
    @meal.destroy
    redirect_to meals_path
  end

  private
  def find_meal
    @meal = Meal.find(params[:id])
  end
  def meal_params
    params.require(:meal).permit(:name, :calories)
  end
end
