class QueriesController < ApplicationController
    def new
      @query = Query.new
      if params[:plant_id]
        @query.plant_id = params[:plant_id]
      else
        @query.build_plant
      end #add if statement for plant _id
    end

    def create
        @query = Query.new(query_params)
        @query.user = current_user
     
        if !@query.plant_id
          @query.plant = Plant.find_or_create_by(name: params[:query][:plant_attributes][:name])
        end

        @query.save 
        redirect_to plant_queries_path(@query.plant)
        
    end 

    def index
      @plant = Plant.find_by(id: params[:plant_id])
    
    end

    def show
   
        @query = Query.find_by(id: params[:id])
        @plant = @query.plant
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
    params.require(:query).permit(:question, :image_url, :plant_id, plant_attributes:[:name])
      end
end
