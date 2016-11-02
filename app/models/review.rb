# == Schema Information
#
# Table name: reviews
#
#  id          :integer          not null, primary key
#  rating      :integer
#  description :text
#  song_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  reviewer    :string
#

class Review < ActiveRecord::Base
  belongs_to :song
  
  # validates :song_id, presence: true
  # this only validates if the song id is typed into form
  
  validates :song, presence: true
  validates :song, presence: { message: "issss noooo goood!!!."}
  
  # validates :rating, presence: true, numericality: {greater_than: 0, less_than: 6}
end
