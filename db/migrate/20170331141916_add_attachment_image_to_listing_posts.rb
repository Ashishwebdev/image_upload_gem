class AddAttachmentImageToListingPosts < ActiveRecord::Migration
  def self.up
    change_table :listing_posts do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :listing_posts, :image
  end
end
