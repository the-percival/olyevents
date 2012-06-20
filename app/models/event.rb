class Event < ActiveRecord::Base
  acts_as_taggable
  acts_as_indexed :fields => [:name, :description, :venue, :tags]
  attr_accessible :all_ages, :cost, :description, :end_date, :featured, :name, :start_date, :venue_id, :photo, :delete_photo
  before_validation { self.photo.clear if self.delete_photo == '1' }
  belongs_to :venue
  
  has_attached_file :photo, :styles => { :large => "1200x1200", :medium => "600x600>", :thumb => "100x100>" },
      :storage => :s3,
      :bucket => ENV['S3_BUCKET_NAME'],
      :s3_credentials => {
        :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
        :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
      }
end
