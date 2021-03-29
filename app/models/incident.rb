class Incident < ApplicationRecord
  enum payment_mode: [:null, :prepaid, :insurance, :invoice, :partnership, :employeebenefit]

  #after_update_commit :patch_on_ready_core
  after_save :patch_on_ready_core
  before_update :get_employee_ids
  has_many :employees

  employee_ids = []
  
  private
  def patch_on_ready_core
    if saved_change_to_name? #specific to this attribute.
      logger.debug( "name changed");
    else
      logger.debug("Name not changed");
    end
  end

  def get_employee_ids

    employee_ids = self.employees.map {|e| e.id}
    logger.debug("Ids #{employee_ids}")

  end

end
