class Client < ApplicationRecord
  validates :name, :identification, :phone, :address, :email , presence: true, uniqueness: true
  validates :identification, :phone, numericality: { only_integer: true }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
