class Product < ApplicationRecord

    has_many :orders

    has_many :costumers, through: :orders

end
