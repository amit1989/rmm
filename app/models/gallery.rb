class Gallery < ActiveRecord::Base
   has_attached_file :pic
   attr_accessible :pic
#   validates :pic, :presence => true, :message => 'Select the image'
end
