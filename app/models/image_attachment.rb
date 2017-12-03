class ImageAttachment < Attachment
  has_attached_file :attachment,
    :styles => { :small => "200x150>", :large => "400x300>" },
    :storage => :s3,
    :s3_credentials => "#{Rails.root}/config/s3.yml",
    :s3_protocol => :https,
    :s3_permissions => :private,
    :s3_region => 'ap-southeast-1',
    :keep_old_files => true,
    :bucket => 'duy.test',
    :default_url => 'nricFrontPlaceholder.png'

  validates_attachment_content_type :attachment, :content_type => ['image/jpeg', 'image/png']
end