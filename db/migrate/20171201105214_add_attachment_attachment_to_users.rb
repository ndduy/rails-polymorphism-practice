class AddAttachmentAttachmentToUsers < ActiveRecord::Migration[5.1]
  def self.up
    change_table :users do |t|
      t.attachment :attachment
    end
  end

  def self.down
    remove_attachment :users, :attachment
  end
end
