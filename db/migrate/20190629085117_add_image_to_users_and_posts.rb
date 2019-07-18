class AddImageToUsersAndPosts < ActiveRecord::Migration[5.2]
  def change
    add_column:Users, :avatar, :string
    add_column:Posts, :image, :string
  end
end
