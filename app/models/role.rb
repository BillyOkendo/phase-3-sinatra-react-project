class Role < ActiveRecord::Base
    belongs_to :house
    belongs_to :attendant
end