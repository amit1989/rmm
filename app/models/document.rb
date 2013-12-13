class Document < ActiveRecord::Base
   has_attached_file :doc
  attr_accessible :date, :detail, :doc, :file_link
end
