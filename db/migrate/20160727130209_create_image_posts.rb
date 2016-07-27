class CreateImagePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :image_posts do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
