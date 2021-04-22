class Incident < ApplicationRecord
  enum payment_mode: [:null, :prepaid, :insurance, :invoice, :partnership, :employeebenefit]

  #after_update_commit :patch_on_ready_core
  after_save :patch_on_ready_core
  before_update :get_employee_ids
  has_many :employees

  employee_ids = []


  def get_employee_emails
    #emails = self.employees.map {|e| e.email}
    emails = employees.map do |e|
      {email: e.email}
    end
  end
  
  private
  def patch_on_ready_core
    if saved_change_to_name? #specific to this attribute.
      logger.debug( "name changed");
    else
      logger.debug("Name not changed");
    end
    logger.info("previous changes #{previous_changes}") # TODO why does this fail?
  end
  
  def get_employee_ids

    employee_ids = self.employees.map {|e| e.id}
    logger.debug("Ids #{employee_ids}")

  end

end
