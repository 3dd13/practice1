class CreateRares < ActiveRecord::Migration
  def change
    create_table :rares do |t|
      t.string :rare_name
      t.string :rare_family
      t.decimal :longitude
      t.decimal :latitude
      t.boolean :verified

      t.timestamps
    end
  end
end
