class Attachment < ApplicationRecord
  belongs_to :attachable, :polymorphic => true
  delegate :url, :to => :attachment
end
