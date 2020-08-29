class DaycaresController < ApplicationController
    def new
        @daycare = Daycare.new
        @dogs = Dog.all
        @activities = Activity.all
    end

    def create
        daycare_params = params.require(:daycare).permit(:dog_id, :activity_id, :duration)
        # byebug
        @daycare = Daycare.create(daycare_params)
        # OR
        # daycare.create(dog_id: params[:daycare][:dog_id], activity_id: params[:daycare][:activity_id])
        
        # redirect_to dog_path(@daycare.dog)
        redirect_to @daycare.dog
    end
end
