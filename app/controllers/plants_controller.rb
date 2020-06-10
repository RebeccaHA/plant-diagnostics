class PlantsController < ApplicationController
    before_action :require_login, except: :index
    
    def index
        if params[:term]
            parameter = params[:term].downcase  
            @plants = Plant.search(parameter)
        else
        @plants = Plant.all
        end
    end

    def show
        @plant = Plant.find_by(id: params[:id])

    end
    


    
end
