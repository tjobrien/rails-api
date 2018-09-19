class Execution < ApplicationRecord
    #has_one :calculable, as: :payout # looking for a payout_id in the calculables table
    has_one :calculable
end
