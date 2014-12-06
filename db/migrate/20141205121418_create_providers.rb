class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :name
      t.text :address
      t.string :city
      t.string :state
      t.string :rfc

      t.timestamps
    end
  end
end
