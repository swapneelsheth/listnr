# == Schema Information
#
# Table name: artists
#
#  id         :integer          not null, primary key
#  name       :string
#  dob        :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Artist < ActiveRecord::Base
  
  validates :name, :presence => true
end
