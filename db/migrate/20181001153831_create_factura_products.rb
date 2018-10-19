class CreateFacturaProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :factura_products do |t|
      t.belongs_to :factura, foreign_key: true
      t.belongs_to :product, foreign_key: true
      t.decimal :quantity
      t.decimal :price
      t.decimal :total_price
    end
  end
end
