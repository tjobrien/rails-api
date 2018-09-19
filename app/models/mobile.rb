class Mobile < ApplicationRecord
    include Versionable
    after_create :add_version
    after_update :update_version
end
