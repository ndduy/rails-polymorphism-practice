class UserVerificationDocument < VerificationDocument
  has_one :nric_front, :as => :attachable, :class_name => "ImageAttachment", :dependent => :destroy
  has_one :nric_back, :as => :attachable, :class_name => "ImageAttachment", :dependent => :destroy
end
