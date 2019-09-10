class Leash < ActiveRecord::Base 
    belongs_to :owner 
    belongs_to :pet 
end

# leash_1 = Leash.create(owner_id: 1, pet_id: 2)
# leash_1.owner
# leash_1.pet => returns and instance of Pet, not an array 