class AddPostRefToComments < ActiveRecord::Migration[7.2]
  def change
    add_reference :comments, :post, null: false, foreign_key: true
  end
end
