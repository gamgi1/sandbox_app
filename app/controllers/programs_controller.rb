class ProgramsController < ApplicationController
  before_action :find_computer
  before_action :find_program, only: [:update, :destroy]

  def index
    @programs = @computer.programs
  end

  def new
    @program = @computer.programs.build
    #@program = Program.new
  end

  def create
    @program = @computer.programs.build(program_params)
    if @program.save
      redirect_to computer_programs_path(@computer)
    else
      render :new
    end
  end

  def edit
    @program = @computer.programs.find(params[:id])#duplicated below
  end

  def update
    if @program.update_attributes(program_params)
      redirect_to computer_programs_path(@computer.id)
    else
      render :edit
    end
  end

  def show
    @program = @computer.programs.find(params[:id])
  end

  def destroy
    @program.destroy
    redirect_to computer_programs_path(@computer)
  end

  private
  def program_params
    params.require(:program).permit(:program_name, :program_size)
  end

  def find_program
    @program = Program.find(params[:id])
  end

  def find_computer
    @computer = Computer.find(params[:computer_id])
  end

end
