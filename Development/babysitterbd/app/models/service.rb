# == Schema Information
#
# Table name: services
#
#  id            :integer          not null, primary key
#  client_id     :integer
#  babysitter_id :integer
#  schedule_id   :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Service < ActiveRecord::Base
  belongs_to :client
  belongs_to :babysitter
  belongs_to :schedule
end
