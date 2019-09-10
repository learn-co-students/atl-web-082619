class Owner < ActiveRecord::Base
    has_many :leashes 
    has_many :pets, through: :leashes
end

# pete = Owner.create(...)
# pete.leashes => Array
# pete.pets => Array 