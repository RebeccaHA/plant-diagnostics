module ApplicationHelper
    def form_errors(object)
        if object.errors.any?
            object.errors.full_messages.each do |message| 
            message
            end
        end
    end     
end
