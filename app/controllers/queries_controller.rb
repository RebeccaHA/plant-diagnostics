class QueriesController < ApplicationController
    def new
        @query = Query.new
        @query.build_plant
    end

    def create
        @query = Query.new(query_params)
        @query.user = current_user
        @query.plant = Plant.find_by(name: params[:query][:plant_attributes][:name])
  
        if  @query.save 
        redirect_to plant_queries_path(@query)
        end
    end 

    def index
      @plant = Plant.find(params[:plant_id])
      @queries = @plant.queries
    end

    def show
        @query = Query.find_by(id: params[:id])
        @plant = Plant.find_by(name: params[:plant][:name])
    end

    def edit
    
    end

    def update

    end

    def upload
        uploaded_file = params[:query][:image_url]
        File.open(Rails.root.join('public', 'uploads', uploaded_file.original_filename), 'wb') do |file|
          file.write(uploaded_file.read)
        end
      end

      private
      def query_params
    params.require(:query).permit(:question, :image_url, :plant_id, plant_attributes:[:name],)
      end
end
