class CreateJoinRefMany < ActiveRecord::Migration
  def change
    create_table :users do |t|
      # implicit user_id binds to user_id of roles_users join table
      t.string :name
      t.timestamps
    end

    # join table
    create_table :users_roles, :id => false do |t|
      t.integer :user_id
      t.integer :role_id
    end
    
    create_table :roles do |t|
      # implicit role_id binds to role_id of roles_users join table
      t.string :name
      t.timestamps
    end    
  end
end

