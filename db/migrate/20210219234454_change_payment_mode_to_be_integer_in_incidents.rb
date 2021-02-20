class ChangePaymentModeToBeIntegerInIncidents < ActiveRecord::Migration[5.2]
  def change
    remove_column :incidents, :payment_mode
    add_column :incidents, :payment_mode, :integer, :default => nil
  end
end
