class AddProfileImageToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :profile_image_id, :string
  end
end
