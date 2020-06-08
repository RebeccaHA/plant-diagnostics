class PlantsController < ApplicationController
    before_action :require_login, except: :index
    
    def index
    @plants = Plant.all
    end

    def show
        @plant = Plant.find_by(id: params[:id])

    end
    
    def search
            if params[:term].blank?  
              redirect_to(plants_path, alert: "Empty field!") and return  
            else  
                @parameter = params[:term].downcase  
                @results = Plant.all.where("lower(name) LIKE :search", search: "%#{@parameter}%")  
            end  
    end

 
    
end
