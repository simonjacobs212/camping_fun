class CampersController < ApplicationController

    before_action :set_camper, only: [:show, :edit, :update]

    def index
        @campers = Camper.all
    end
    
    def show
        
    end
  
    def new
        @camper = Camper.new
    end
  
    def create
        @camper = Camper.create(camper_params(:name, :age))
        redirect_to camper_path(@camper)
    end
  
    def edit
    end
  
    def update
        @camper.update(camper_params(:name, :age))
        redirect_to camper_path(@camper)
    end

    private

    def camper_params(*args)
        params.require(:camper).permit(*args)
    end
    
    def set_camper 
        @camper = Camper.find(params[:id])
    end

end

