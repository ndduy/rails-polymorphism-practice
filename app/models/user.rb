class User < ApplicationRecord
  has_one :user_verification_document, :as => :verifiable_document, :class_name => "UserVerificationDocument", :dependent => :destroy
end
