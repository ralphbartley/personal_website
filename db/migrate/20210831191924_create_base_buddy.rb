class CreateBaseBuddy < ActiveRecord::Migration[6.1]
  def change
    create_table :base_buddy do |t|
      t.string :title
      t.text :data

      t.timestamps
    end
  end
end
