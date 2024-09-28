class AddUserRefToComments < ActiveRecord::Migration[7.2]
  def change
    add_reference :comments, :user, null: false, foreign_key: true
  end
end
