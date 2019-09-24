* Objectives
    - Review CRUD capabilities for single model
    - Create associations between two models
    - Use a dropdown select in a form
    - Create a model instance and its associated instances from a single form
        - add `@retailer.snacks.build` in `new` action
        - create the nested form in your view
        - add `accepts_nested_attributes_for :snacks` to model
        - Strong params:
            ```rb
            def retailer_params
              params.require(:retailer).permit(:name, :year_established,
                  snacks_attributes: [:name, :calories, :deliciousness])
            end
            ```