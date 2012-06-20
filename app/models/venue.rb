class Venue < ActiveRecord::Base
  attr_accessible :address, :description, :name, :website, :wiki_url, :photo

  has_many :events
  
  has_attached_file :photo, :styles => { :large => "1200x1200", :medium => "600x600>", :small => "300x300", :thumb => "100x100>" }
end
