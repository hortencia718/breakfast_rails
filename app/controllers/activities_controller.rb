class ActivitiesController < ApplicationController
    
    def index
        @activities = Activity.all
    end
    
    def show
        @activity = Activity.find(params[:id])
    end

    def destroy
        @activity = Activity.find(params[:id])
        @activity.destroy
        redirect_to activities_path
    end
    
end
