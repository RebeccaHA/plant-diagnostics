class QueriesController < ApplicationController
    def new
        @query = Query.new
        @query.build_plant
       
    end

    def create
        @query = Query.create(query_params)
        
        redirect_to query_path(@query)
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
    params.require(:query).permit(:question, :image_url, plant_attributes:[:name])
      end
end
