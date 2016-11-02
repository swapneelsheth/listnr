class AddReviewerToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :reviewer, :string
  end
end
