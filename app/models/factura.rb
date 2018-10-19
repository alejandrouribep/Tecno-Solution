class Factura < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :client, optional: true
  belongs_to :product, optional: true
  belongs_to :service, optional: true

end
