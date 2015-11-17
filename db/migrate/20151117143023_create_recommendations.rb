class CreateRecommendations < ActiveRecord::Migration
  def change
    create_table :recommendations do |t|
      t.string :owner
      t.text :body
      t.string :company

      t.timestamps null: false
    end
  end
end
