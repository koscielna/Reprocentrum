class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :topic
      t.string :body

      t.timestamps
    end
  end
end
