class AddUserToFace < ActiveRecord::Migration[5.2]
  def change
    add_reference :faces, :user, foreign_key: true
  end
end
