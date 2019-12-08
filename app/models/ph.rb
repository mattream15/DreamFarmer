class Ph < ApplicationRecord

    has_many :cannabis_plants
       
       validates :measure, presence: true
   
   end