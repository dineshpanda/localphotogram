class AddUserReferenceToVotes < ActiveRecord::Migration[6.0]
  def change    add_foreign_key :votes, :users, column: :user_id    add_index :votes, :user_id    change_column_null :votes, :user_id, false
    add_reference :votes, :user, null: false, foreign_key: true
  end
end
