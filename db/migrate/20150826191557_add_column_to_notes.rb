class AddColumnToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :project_name, :string
    remove_column :notes, :project_id
  end
end
