class User < ActiveRecord::Base
  attr_accessible :address, :contactno, :designation, :email, :membershipno, :name
end
