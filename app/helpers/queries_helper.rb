module QueriesHelper
    def selected_plant
      if @query.plant_id
        @query.plant.name
      end
    end
  
            
    #helper method if @quewry has plant id, then show plant name and hidden input else render the dropdown
end
