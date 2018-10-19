class CreateFacturas < ActiveRecord::Migration[5.2]
  def change
    create_table :facturas do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :clients, foreign_key: true
      t.belongs_to :products, foreign_key: true
      t.belongs_to :services, foreign_key: true
      t.date :fecha
      t.decimal :price
      t.string :details

      t.timestamps
    end
  end
end
