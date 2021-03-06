# == Schema Information
#
# Table name: ratings
#
#  id         :integer          not null, primary key
#  service_id :integer
#  value      :integer
#  type       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Rating < ActiveRecord::Base
  belongs_to :service
end
