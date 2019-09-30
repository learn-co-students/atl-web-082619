class Snack < ApplicationRecord
    belongs_to :retailer
    validates :name, presence: true, uniqueness: {case_sensitive: false}
    validates :calories, presence: true
    validates :deliciousness, presence: true
end
