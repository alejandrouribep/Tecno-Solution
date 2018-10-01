class Factura < ApplicationRecord
  belongs_to :users
  belongs_to :clients
  belongs_to :products
  belongs_to :services
end
