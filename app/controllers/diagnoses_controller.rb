class DiagnosesController < ApplicationController
    before_action :require_login
    before_action :set_query, only: [:upvote]
    
    
    def new
        @diagnosis = Diagnosis.new
        @diagnosis.query_id = params[:query_id]
    end

    def create
        @diagnosis = Diagnosis.new(diagnosis_params)
        @query = Query.find_by(id: params[:diagnosis][:query_id])
        @plant = @query.plant
        @diagnosis.user = current_user
            if @diagnosis.save
                redirect_to query_path(@query)
            else
                render :new
            end
    end

    def upvote
        @diagnosis= Diagnosis.find(params[:diagnosis_id])
        @diagnosis.increment!(:upvote)
        redirect_to query_path(@query)
    end
    
    private

    def diagnosis_params
        params.require(:diagnosis).permit(:comment, :query_id, :user_id)
    end
end
