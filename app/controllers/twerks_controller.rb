class TwerksController < ApplicationController
  def index
  end

  def new
  end

  def show
  end

  def create
    @twerk = Twerk.new(twerk_params)

    @twerk.save
    redirect_to @twerk
  end

  private

  def twerk_params
    params.require(:twerk).permit(:title, :text)
  end

end
