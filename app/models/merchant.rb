class Merchant < ApplicationRecord
  has_one :merchant_verification_document, :as => :verifiable_document, :class_name => "MerchantVerificationDocument", :dependent => :destroy
end
