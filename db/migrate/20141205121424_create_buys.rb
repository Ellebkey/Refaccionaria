class CreateBuys < ActiveRecord::Migration
  def change
    create_table :buys do |t|
      t.float :total
      t.date :fecha
      t.references :admin_user, index: true
      t.references :provider, index: true

      t.timestamps
    end
  end
end
