class Incident < ApplicationRecord
  enum payment_mode: [:none, :prepaid, :insurance, :invoice, :partnership, :employeebenefit]
end
