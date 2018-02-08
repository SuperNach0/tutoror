class TableBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books
    add_column :books, :title, :string
  end
end
