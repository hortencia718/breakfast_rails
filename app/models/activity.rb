class Activity < ApplicationRecord
    has_many :daycares, dependent: :destroy
    has_many :dogs, through: :daycares
end
