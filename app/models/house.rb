class House < ActiveRecord::Base
    has_many :roles
    has_many :attendants
end