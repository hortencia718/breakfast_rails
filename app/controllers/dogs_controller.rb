class DogsController < ApplicationController
    def index
        @dogs = Dog.all
    end

    def new
        @dog = Dog.new
    end

    def create
        @dog = Dog.create(dog_params)
        redirect_to dog_path(@dog)
    end

    def show
        # byebug
        @dog = Dog.find(params[:id])
    end


    def edit
          byebug
        
        @dog = Dog.find(params[:id]) 
       
        @activities = @dog.activities

    end



    def update
        @dog = Dog.find(params[:id])
        @dog.update(dog_params)
        redirect_to dog_path(@dog)


    end



    private

    def dog_params
        params.require(:dog).permit(:name, :age)
    end
end
