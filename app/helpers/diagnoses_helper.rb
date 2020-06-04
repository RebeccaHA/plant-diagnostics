module DiagnosesHelper
    def display_diagnosis
        if @query.diagnoses
            @query.diagnoses.each do |diagnosis|
            diagnosis.comment
            diagnosis.created_at
            diagnosis.user.name
            end
        end
    end

   
end
