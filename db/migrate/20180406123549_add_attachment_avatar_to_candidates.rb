class AddAttachmentAvatarToCandidates < ActiveRecord::Migration[5.1]
  def self.up
    change_table :candidates do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :candidates, :avatar
  end
end
