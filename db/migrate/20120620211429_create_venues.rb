class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.text :description
      t.string :wiki_url
      t.string :website
      t.string :address

      t.timestamps
    end
  end
end
