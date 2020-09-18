class Video < ApplicationRecord
  mount_uploader :file, FileUploader
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :comments

  with_options presence: true do
    validates :title
    validates :description
    validates :file
    validates :image
  end
end
