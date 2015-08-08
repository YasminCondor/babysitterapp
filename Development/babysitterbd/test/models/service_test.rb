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

require 'test_helper'

class ServiceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
