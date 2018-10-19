class Client < ApplicationRecord
  validates :name, :identification, :phone, :email , presence: true, uniqueness: true
  validates :address, presence: true
  validates :identification, :phone, numericality: { only_integer: true }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  belongs_to :factura


end
