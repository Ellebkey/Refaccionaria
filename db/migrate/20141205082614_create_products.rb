class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :clave
      t.text :description
      t.integer :stock
      t.boolean :avaible
      t.float :pricepublic
      t.float :pricedesc
      t.float :pricemaxd
      t.references :categprod, index: true

      t.timestamps
    end
  end
end
