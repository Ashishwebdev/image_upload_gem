class CreateListingPosts < ActiveRecord::Migration
  def change
    create_table :listing_posts do |t|
      t.string :Title
      t.string :Content

      t.timestamps null: false
    end
  end
end
