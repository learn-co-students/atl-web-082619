- SWBAT build a form to create a new resource
- SWBAT build a form to edit an existing resource
- SWBAT build a link or a form to delete a resource
- SWBAT use method override to send actions other than GET and POST
    - `    set :method_override, true` at top of controller
    - make form action get/post, and include 
    `    <input type="hidden" name="_method" value="PATCH">`