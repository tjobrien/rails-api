class AddIncidentIdToEmployees < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :incident_id, :integer
  end
end
