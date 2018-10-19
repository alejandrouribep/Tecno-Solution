class Product < ApplicationRecord
  validates :name,  :description, presence: true, uniqueness:true
  validates :price, :cantidad, presence: true
  validates :cantidad, :price, numericality:true
  has_many :facturas
  ##validates :name, format:{ with: /\A[a-zA-Z]+\z/, message: "Ingrese solo letras" }
end
