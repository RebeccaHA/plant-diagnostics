class PlantsController < ApplicationController
    before_action :require_login, except: :index
    before_action :set_plant, only: [:show]
    
    def index
        if params[:term]
            parameter = params[:term].downcase  
            @plants = Plant.search(parameter)
        else
        @plants = Plant.all
        end
    end

    def show

    end
    


    
end
