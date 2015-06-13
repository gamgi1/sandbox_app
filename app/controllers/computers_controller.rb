class ComputersController < ApplicationController
  before_action :find_computer, only: [:edit, :update, :show, :destroy]

  def index
    @computers = Computer.all
  end
  def new
    @computer = Computer.new
  end
  def create
    @computer = Computer.new(computer_params)
    if @computer.save
      redirect_to new_computer_program_path(@computer.id)
    else
      render :new
    end
  end
  def edit
  end
  def update
    if @computer.update(computer_params)
      redirect_to computers_path
    else
      render :edit
    end
  end
  def show
  end
  def destroy
    @computer.destroy
    redirect_to computers_path
  end

  private
  def computer_params
    params.require(:computer).permit(:computer_name, :memory)
  end

  def find_computer
    @computer = Computer.find(params[:id])
  end
end
