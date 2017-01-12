class BeesController < ApplicationController

  def index
    @bees = Bee.all
  end

  def new
    @bee = Bee.new
  end

  def create
    @bee = Bee.new(bees_params)
    if @bee.save
      redirect_to @bee
    else
      render "new"
    end    
  end

  def show 
    @bee = Bee.find(params[:id])
  end

  def destroy
    @bee = Bee.find(params[:id])
    @bee.destroy
    redirect_to @bee
  end

  def edit
    @bee = Bee.find(params[:id])
  end

  def update
    @bee = Bee.find(params[:id])
    @bee.update(bees_params)
    redirect_to @bee
  end

  private

  def bees_params
    params.require(:bee).permit(:name, :address, :bee_type)
  end
end
