class Photo < ActiveRecord::Base
  acts_as_votable
  has_attachment :attachment, accept: [:jpg, :png, :gif]
end
