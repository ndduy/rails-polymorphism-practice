class VerificationDocument < ApplicationRecord
  belongs_to :verifiable_document, :polymorphic => true
end
