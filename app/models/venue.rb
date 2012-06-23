class Venue < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  
  attr_accessible :address, :description, :name, :website, :wiki_url, :photo, :events, :delete_photo
  has_many :events
  
  has_attached_file :photo, :styles => { :large => "1200x1200", :medium => "600x600>", :thumb => "100x100>" },
      :storage => :s3,
      :bucket => ENV['S3_BUCKET'],
      :s3_credentials => {
        :access_key_id => ENV['S3_KEY'],
        :secret_access_key => ENV['S3_SECRET']
      }
end
