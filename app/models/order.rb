class Order < ApplicationRecord
  belongs_to :costumer
  belongs_to :product
end
