class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.float :totalp
      t.references :admin_user, index: true
      t.references :product, index: true
      t.references :sell, index: true

      t.timestamps
    end
  end
end
