class RemoveVenueFromEvents < ActiveRecord::Migration
  def up
    remove_column :events, :venue
  end

  def down
  end
end
