class CreateCorrections < ActiveRecord::Migration
  def change
    create_table :corrections do |t|
      t.text :description
      t.references :ticket, index: true

      t.timestamps
    end
  end
end
