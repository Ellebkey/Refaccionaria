class CreateSells < ActiveRecord::Migration
  def change
    create_table :sells do |t|
      t.integer :cant
      t.float :totalp
      t.boolean :state
      t.references :product, index: true
      t.references :facture, index: true

      t.timestamps
    end
  end
end
