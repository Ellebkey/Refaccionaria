class CreateFactures < ActiveRecord::Migration
  def change
    create_table :factures do |t|
      t.date :fecha
      t.float :totalfac
      t.references :client, index: true

      t.timestamps
    end
  end
end
