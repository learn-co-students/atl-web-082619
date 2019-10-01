class Retailer < ApplicationRecord
    has_many :snacks
    accepts_nested_attributes_for :snacks, 
        reject_if: proc {|attributes| attributes[:name].blank? }

    validates :name, presence: true, uniqueness: true
    validates :year_established, presence: true
    validate :year_established_between_1800_and_present,
        unless: proc {|a| a.year_established.blank? }

    def year_established_between_1800_and_present
        if !(self.year_established > 1800 && self.year_established < Date.today.year)
            errors.add(:year_established, "must be between 1800 & #{Date.today.year}")
        end
    end

end
