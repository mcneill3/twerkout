class TwerksController < ApplicationController

  def index
    @twerks = Twerk.all
  end

  def new
    @twerk = Twerk.new
  end

  def show
    @twerk = Twerk.find(params[:id])
  end

  def create
    @twerk = Twerk.new(twerk_params)

    @twerk.save
    redirect_to @twerk
  end

  private

  def twerk_params
    params.require(:twerk).permit(:title, :body)
  end

end
