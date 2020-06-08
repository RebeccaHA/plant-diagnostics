class QueriesController < ApplicationController
  before_action :require_login
  
  def new
      @query = Query.new
      if params[:plant_id]
        @query.plant_id = params[:plant_id]
      else
        @query.build_plant
      end 
    end

    def create
        @query = Query.new(query_params)
        @query.user = current_user
     
        if !@query.plant_id && @query.user
          @query.plant = Plant.find_or_create_by(name: params[:query][:plant_attributes][:name])
        end

        if @query.save 
        redirect_to plant_queries_path(@query.plant)
        else 
          render :new
        end
    end 

    def index
      @plant = Plant.find_by(id: params[:plant_id])
    
    end

    def show
        @query = Query.find_by(id: params[:id])
        @plant = @query.plant
        @diagnoses = Diagnosis.best_diagnoses(@query.id)
    end

    def edit
    
    end

    def update

    end


      private
      def query_params
       params.require(:query).permit(:question, :image, :plant_id, plant_attributes:[:name])
      end
end
