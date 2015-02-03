# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  source     :string(255)
#  keywords   :text
#  created_at :datetime
#  updated_at :datetime
#

class Category < ActiveRecord::Base
end
