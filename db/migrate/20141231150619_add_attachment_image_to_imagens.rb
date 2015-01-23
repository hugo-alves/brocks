class AddAttachmentImageToImagens < ActiveRecord::Migration
  def self.up
    change_table :imagens do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :imagens, :image
  end
end
