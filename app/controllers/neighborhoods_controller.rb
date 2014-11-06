class NeighborhoodsController < ApplicationController
  def show
    @neighborhood = Neighborhood.find(params[:id])
  end

  def edit
    @neighborhood = Neighborhood.find(params[:id])
  end

  def update
    @neighborhood = Neighborhood.find(params[:id])
    if @neighborhood.update_attributes(params.require(:neighborhood).permit(:title, :description))
      redirect_to neighborhoods_path
    else
      render 'edit'
    end
  end

  def destroy
    @neighborhood = Neighborhood.find(params[:id])
    @neighborhood.destroy
    redirect_to neighborhoods_path
  end

  def create
    @neighborhood = Neighborhood.new(params.require(:neighborhood).permit(:title, :description))
      if @neighborhood.save
        redirect_to neighborhoods_path
      else
        render 'new'
      end
  end

  def index
    @neighborhoods = Neighborhood.all
  end

  def new
    @neighborhood = Neighborhood.new
  end
end
