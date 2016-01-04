#require 'mime/types'

class Offer < ActiveRecord::Base
  acts_as_textcaptcha :api_key => 'eaf450085c15c3b880c66d0b78f2c041'
  ActsAsTaggableOn.delimiter = [',',' ']
  ActsAsTaggableOn.remove_unused_tags = true
  ActsAsTaggableOn.force_lowercase = true
  validates :title, :description, :tag_list, :location_list, :image, :contact_information, :expiration, length: {maximum: 500}
  validates :tag_list, presence: true
  acts_as_taggable
  acts_as_taggable_on :locations
  has_attached_file :image, styles: {original: "1000x1000>", big: "400x400>", small: "100x100>" }, default_url: "/images/:style/missing.png"
  #validates_attachment :image, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
  #validates :image, :file_mime_type => {:content_type => /image/}
  validates_attachment_content_type :image, content_type: /\Aimage/
  # Validate filename
  validates_attachment_file_name :image, matches: [/png\Z/, /jpe?g\Z/]
  validates_attachment_size :image, less_than: 10.megabytes
  # Explicitly do not validate
  do_not_validate_attachment_file_type :image
  
  #before_create :ensure_title
  #before_update :ensure_title

  def perform_textcaptcha?
    true
    #false
  end


private

  def ensure_title
    if self.title.empty?
      self.title = "Untitled"
    end
    
  end


end
