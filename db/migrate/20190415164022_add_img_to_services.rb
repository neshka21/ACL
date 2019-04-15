class AddImgToServices < ActiveRecord::Migration[5.2]
  def change
    add_column :services, :imgs, :string
  end
end
