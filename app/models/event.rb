class Event < ActiveRecord::Base
  acts_as_taggable
  acts_as_indexed :fields => [:name, :description, :venue, :tags]
  attr_accessible :all_ages, :cost, :description, :end_date, :featured, :name, :start_date, :venue_id, :photo
  
  belongs_to :venue
  
  has_attached_file :photo, :styles => { :large => "1200x1200", :medium => "600x600>", :small => "300x300", :thumb => "100x100>" }
end
