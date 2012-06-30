class Event < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  paginates_per 4
  acts_as_taggable
  acts_as_indexed :fields => [:name, :description, :venue, :tags]
  attr_accessible :all_ages, :cost, :description, :end_date, :featured, :name, :start_date, :venue_id, :photo, :delete_photo, :tag_list
  belongs_to :venue
  
  scope :upcoming, lambda {
    where("start_date > ?", Date.yesterday)
  }
  
  scope :today, lambda {
    where("start_date between ? and ?", Date.today, Date.tomorrow)
  }
  
  scope :this_week, lambda {
    where("start_date between ? and ?", Date.today, Date.today + 7)
  }
  
  has_attached_file :photo, :styles => { :large => "1200x1200", :medium => "600x600>", :thumb => "100x100>" },
      :storage => :s3,
      :bucket => ENV['S3_BUCKET'],
      :s3_credentials => {
        :access_key_id => ENV['S3_KEY'],
        :secret_access_key => ENV['S3_SECRET']
      }
end
