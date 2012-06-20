class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :featured
      t.integer :cost
      t.boolean :all_ages
      t.integer :venue

      t.timestamps
    end
  end
end
