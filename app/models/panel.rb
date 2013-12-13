class Panel < ActiveRecord::Base
  has_attached_file :photo
  attr_accessible :contactno, :designation, :detail, :email, :membershipno, :name, :avatar, :photo

#  attr_accessible :avatar_file_name
 
end
