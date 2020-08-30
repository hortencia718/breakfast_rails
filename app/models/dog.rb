class Dog < ApplicationRecord

    ######################## this is super important ###############################
    ######################## order is super super important ###############################
    has_many :daycares, dependent: :destroy
    has_many :activities, through: :daycares
    # has_many :activities, 
    # Dependent: :delete_all
end
