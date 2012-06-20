class Venue < ActiveRecord::Base
  attr_accessible :address, :description, :name, :website, :wiki_url, :photo, :events, :delete_photo
  has_many :events
  
  has_attached_file :photo, :styles => { :large => "1200x1200", :medium => "600x600>", :thumb => "100x100>" },
      :storage => :s3,
      :bucket => ENV['S3_BUCKET_NAME'],
      :s3_credentials => {
        :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
        :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
      }
end
