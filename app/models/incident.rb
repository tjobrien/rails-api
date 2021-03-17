class Incident < ApplicationRecord
  enum payment_mode: [:none, :prepaid, :insurance, :invoice, :partnership, :employeebenefit]

  #after_update_commit :patch_on_ready_core
  after_save :patch_on_ready_core

  private
  def patch_on_ready_core
    if saved_change_to_name?
      logger.debug( "name changed");
    else
      logger.debug("Name not changed");
    end
  end

end
