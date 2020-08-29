class Dog < ApplicationRecord
    has_many :daycares
    # has_many :activities through: :daycares
end
