class Photo < ActiveRecord::Base
  acts_as_votable
  validates_presence_of :attachment
  has_attached_file :attachment, storage: :cloudinary, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :attachment, content_type: /\Aimage\/.*\Z/
end
