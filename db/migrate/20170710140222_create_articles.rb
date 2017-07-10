class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.string :author
      t.string :published
      t.string :thumbnail
      t.belongs_to :topic
      t.timestamps
    end
  end
end
