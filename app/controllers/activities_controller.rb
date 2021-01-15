class ActivitiesController < ApplicationController

    before_action :set_activity, only: [:show, :edit, :update]

    def index
        @activities = Activity.all
    end
    
    def show
    end
  
    def new
        @activity = Activity.new
    end
  
    def create
        @activity = Activity.create(activity_params(:name, :difficulty))
        redirect_to activity_path(@activity)

    end
  
    def edit
    end
  
    def update
        @activity.update(activity_params(:name, :difficulty))
        redirect_to activity_path(@activity)
    end

    private

    def activity_params(*args)
        params.require(:activity).permit(*args)
    end
    
    def set_activity 
        @activity = Activity.find(params[:id])
    end


    
end
