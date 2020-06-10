class QueriesController < ApplicationController
  before_action :require_login
  before_action :set_plant, only: :index
  before_action :set_query, only: :show
  
  def new
      @query = Query.new
        if params[:plant_id]
          @query.plant_id = params[:plant_id]
        else
          @query.build_plant
        end 
  end

  def create
      @query = current_user.queries.new(query_params)
        if !@query.plant_id 
          @query.plant = Plant.find_or_create_by(name: params[:query][:plant_attributes][:name])
        end

        if @query.save 
          redirect_to plant_queries_path(@query.plant)
        else 
          render :new
        end
  end 

  def index
    
  end

  def show
      @plant = @query.plant
      @diagnoses = Diagnosis.best_diagnoses(@query.id)
  end



  private
  def query_params
      params.require(:query).permit(:question, :image, :plant_id, plant_attributes:[:name])
  end
end
