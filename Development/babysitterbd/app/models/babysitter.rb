# == Schema Information
#
# Table name: babysitters
#
#  id               :integer          not null, primary key
#  phonenumber      :text(65535)
#  firstname        :text(65535)
#  lastname         :text(65535)
#  document         :text(65535)
#  birthdate        :text(65535)
#  district         :text(65535)
#  address          :text(65535)
#  startdate        :text(65535)
#  resume           :text(65535)
#  maxcountchildren :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Babysitter < ActiveRecord::Base
end
