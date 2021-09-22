class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.String :email, null: false
      t.String :password_digest

      t.timestamps
    end
  end
end
