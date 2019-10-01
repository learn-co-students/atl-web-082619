class Snack < ApplicationRecord
    belongs_to :retailer, optional: true

    validates :name, presence: true
    validates :calories, presence: true
    validates :deliciousness, presence: true

end
