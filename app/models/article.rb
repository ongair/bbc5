# == Schema Information
#
# Table name: articles
#
#  id           :integer          not null, primary key
#  source       :string(255)
#  title        :string(255)
#  summary      :text
#  url          :string(255)
#  article_type :string(255)
#  metadata     :text
#  created_at   :datetime
#  updated_at   :datetime
#

class Article < ActiveRecord::Base
end
