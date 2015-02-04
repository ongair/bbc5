# == Schema Information
#
# Table name: tokens
#
#  id         :integer          not null, primary key
#  source     :string(255)
#  value      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Token < ActiveRecord::Base
end
