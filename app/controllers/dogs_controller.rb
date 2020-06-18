class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end
  
  def show
    @dog = Dog.find(params[:id])
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.create(dog_params)
    if @dog.persisted?
      redirect_to @dog
    else
      render :new
    end
  end

  def edit
    @dog = Dog.create(dog_params)
    if @dog.persisted?
      redirect_to dog
    else
      render :new
    end
  end


  private
  def dog_params
    params.require(:dog).permit(:name, :breed, :size, :about, :img_url)
  end
end