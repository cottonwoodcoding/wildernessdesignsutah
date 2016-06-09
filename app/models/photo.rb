class Photo < ActiveRecord::Base
  acts_as_votable
  has_attachment :attachment, accept: [:jpg, :png, :gif]

  def self.random
    order('random()')
  end
end
