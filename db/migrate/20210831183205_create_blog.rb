class CreateBlog < ActiveRecord::Migration[6.1]
  def change
    create_table :blog do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
