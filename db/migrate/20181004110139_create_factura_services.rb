class CreateFacturaServices < ActiveRecord::Migration[5.2]
  def change
    create_table :factura_services do |t|
      t.belongs_to :factura, foreign_key: true
      t.belongs_to :services, foreign_key: true
      t.decimal :price
      t.string :details
      t.decimal :total_price
    end
  end
end
