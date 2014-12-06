class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.text :address
      t.string :rfc
      t.string :email
      t.boolean :discount

      t.timestamps
    end
  end
end
