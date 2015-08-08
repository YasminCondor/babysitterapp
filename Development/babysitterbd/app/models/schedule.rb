# == Schema Information
#
# Table name: schedules
#
#  id            :integer          not null, primary key
#  date          :date
#  state         :boolean
#  babysitter_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Schedule < ActiveRecord::Base
  belongs_to :babysitter
end
