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
      redirect_to "show"
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
    redirect "index"
  end

  private

  def bees_params
    params.require(:bee).permit(:name, :address, :type)
  end
end
