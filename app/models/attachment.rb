class Attachment < ApplicationRecord
  belongs_to :assetable, :polymorphic => true
  delegate :url, :to => :attachment
end
