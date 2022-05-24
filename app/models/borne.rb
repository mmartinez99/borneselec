class Borne < ApplicationRecord
  mount_uploader :picture, PictureUploader

  def to_s
    self.id
  end
end
