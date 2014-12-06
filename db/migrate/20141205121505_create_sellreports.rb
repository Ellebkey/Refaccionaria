class CreateSellreports < ActiveRecord::Migration
  def change
    create_table :sellreports do |t|
      t.float :total
      t.date :fecha
      t.references :sell, index: true

      t.timestamps
    end
  end
end
