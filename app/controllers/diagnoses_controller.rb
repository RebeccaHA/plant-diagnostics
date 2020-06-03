class DiagnosesController < ApplicationController
    def new
        @diagnosis = Diagnosis.new
    end

    def create
    
        @diagnosis = Diagnosis.new(diagnosis_params)
        @query = Query.find_by(id: params[:id])
        @diagnosis.user = current_user
        @diagnosis.save

        redirect_to query_path(@query)
    end

    def edit
    
    end

    def update

    end
    
    private

    def diagnosis_params
        params.require(:diagnosis).permit(:comment, :query_id, :user_id)
    end
end
