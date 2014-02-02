class CreateConsignments < ActiveRecord::Migration
  def change
    create_table :consignments do |t|
      t.integer :owner_id
      t.integer :good_id

      t.timestamps
    end
  end
end
