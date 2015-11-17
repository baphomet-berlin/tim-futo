class GalleriesPicture < ActiveRecord::Base
  belongs_to :gallery
  belongs_to :picture
end
