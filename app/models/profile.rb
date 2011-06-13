class Profile < ActiveRecord::Base
  attr_accessible :display_name, :about, :gender, :location, :website, :birthday, :picture
  
  belongs_to :user
  
end
