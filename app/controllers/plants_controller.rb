class PlantsController < ApplicationController
    def index
    @plants = Plant.all
    end

    def show
        @plant = Plant.find_by(id: params[:id])

    end
    
    def new

    end

    def create

    end

    def edit
    
    end

    def update

    end
    
end
