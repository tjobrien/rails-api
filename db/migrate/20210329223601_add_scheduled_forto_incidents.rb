class AddScheduledFortoIncidents < ActiveRecord::Migration[5.2]
  def change
    add_column :incidents, :scheduled_for, :datetime
  end
end
