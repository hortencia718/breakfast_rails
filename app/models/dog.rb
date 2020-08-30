class Dog < ApplicationRecord
    has_many :daycares
    has_many :activities, through: :daycares
    has_many :activities, dependent: :delete_all
    # Dependent: :delete_all
end
