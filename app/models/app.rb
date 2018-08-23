class App < ApplicationRecord
    #has_many :versions, as: :versionable
    include Versionable
    after_create :add_version
    after_update :update_version

end
