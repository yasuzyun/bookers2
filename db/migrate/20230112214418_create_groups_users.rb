class CreateGroupsUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :groups_users do |t|
      t.integer :user_id
      t.integer :group_id

      t.timestamps
    end
  end
end
