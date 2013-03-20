class Note < ActiveRecord::Base
  attr_accessible :details, :title
  
  belongs_to :note
end
