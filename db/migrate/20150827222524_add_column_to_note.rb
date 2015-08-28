class AddColumnToNote < ActiveRecord::Migration
  def change
    add_column :notes, :git_file_name, :string
  end
end
