class MerchantVerificationDocument < VerificationDocument
  has_one :document, :as => :attachable, :class_name => "DocumentAttachment", :dependent => :destroy
end
