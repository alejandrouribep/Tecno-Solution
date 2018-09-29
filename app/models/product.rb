class Product < ApplicationRecord
  validates :name,  :description, presence: true, uniqueness:true
  validates :price, :cantidad, presence: true
  validates :cantidad, :price, numericality:true
  ##validates :name, format:{ with: /\A[a-zA-Z]+\z/, message: "Ingrese solo letras" }
end
