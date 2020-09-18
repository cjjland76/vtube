class Comment < ApplicationRecord
  belongs_to :video
  belongs_to :user

  validates :text, presence: true
end
