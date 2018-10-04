class Service < ApplicationRecord
  validates :client, :category, :description, :price, presence: true
  validates :price, numericality: true
  has_many :factura
end
