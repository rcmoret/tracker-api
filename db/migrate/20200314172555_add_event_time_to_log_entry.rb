class AddEventTimeToLogEntry < ActiveRecord::Migration[5.2]
  def self.up
    add_column :log_entries, :event_time, :datetime
    change_column :log_entries, :event_time, :datetime, null: false
  end

  def self.down
    remove_column :log_entries, :event_time
  end
end
