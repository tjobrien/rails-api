class ChangePaymentModeToBeIntegerInIncidents < ActiveRecord::Migration[5.2]
  def up
    change_column :incidents, :payment_mode, 'integer USING CAST(payment_mode AS integer)'
  end

  def down
    change_column :incidents, :payment_mode, :string
  end
end
