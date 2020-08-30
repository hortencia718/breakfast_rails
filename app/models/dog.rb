class Dog < ApplicationRecord
    has_many :daycares
    has_many :activities, through: :daycares
    # has_many :activities, dependent: :destroy
    # Dependent: :delete_all
end
