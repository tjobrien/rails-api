class Incident < ApplicationRecord
  enum payment_mode: [:null, :prepaid, :insurance, :invoice, :partnership, :employeebenefit]
end
