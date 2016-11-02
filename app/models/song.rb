# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  title      :string
#  length     :time
#  price      :float
#  artist_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Song < ActiveRecord::Base
  belongs_to :artist
  has_many :reviews
  
  # validates :title, :presence => true
  validates :title, presence: true
  validates :title, uniqueness: true, length: {minimum: 4}
  validates :price, presence: true, numericality: true
  
end
