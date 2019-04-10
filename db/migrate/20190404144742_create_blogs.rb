class CreateBlogs< ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :imagen
      t.text :description

      t.timestamps
    end
  end
end
