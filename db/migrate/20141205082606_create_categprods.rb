class CreateCategprods < ActiveRecord::Migration
  def change
    create_table :categprods do |t|
      t.string :tipe

      t.timestamps
    end
  end
end
