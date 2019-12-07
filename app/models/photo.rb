class Photo < ActiveRecord::Base
  has_attached_file :attachment, accept: [:jpg, :png, :gif]

  def self.random
    order('random()')
  end
end
