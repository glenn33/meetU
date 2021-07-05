class EventOrganization < ApplicationRecord
  belongs_to :user
  belongs_to :event
end
