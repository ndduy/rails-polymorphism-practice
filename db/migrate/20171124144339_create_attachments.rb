class CreateAttachments < ActiveRecord::Migration[5.1]
  def change
    create_table :attachments do |t|
      t.string   :type
      t.integer  :attachable_id
      t.string   :attachable_type
      t.string   :attachment_file_name
      t.string   :attachment_content_type
      t.integer  :attachment_file_size
      t.datetime :attachment_updated_at
    end

    create_table :verification_documents do |t|
      t.string   :type
      t.integer  :verifiable_document_id
      t.string   :verifiable_document_type
    end

    create_table :users do |t|
      t.string :email
      t.string :encrypted_password
    end

    create_table :merchants do |t|
      t.string :email
    end
  end
end
