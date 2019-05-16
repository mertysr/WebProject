class AddAttachmentResimToFaces < ActiveRecord::Migration[5.2]
  def self.up
    change_table :faces do |t|
      t.attachment :resim
    end
  end

  def self.down
    remove_attachment :faces, :resim
  end
end
