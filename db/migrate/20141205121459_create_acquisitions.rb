class CreateAcquisitions < ActiveRecord::Migration
  def change
    create_table :acquisitions do |t|
      t.integer :cant
      t.references :product, index: true
      t.references :buy, index: true

      t.timestamps
    end
  end
end
