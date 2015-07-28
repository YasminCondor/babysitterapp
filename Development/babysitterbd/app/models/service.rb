class Service < ActiveRecord::Base
  belongs_to :client
  belongs_to :babysitter
  belongs_to :schedule
end
