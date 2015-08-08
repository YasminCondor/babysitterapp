# == Schema Information
#
# Table name: babysitters
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  lastname    :string(255)
#  document    :string(255)
#  startdate   :date
#  maxcount    :integer
#  resume      :text(65535)
#  phone       :integer
#  email       :string(255)
#  password    :string(255)
#  district_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Babysitter < ActiveRecord::Base
  belongs_to :district
end
