class AddColumnToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :github_repo_id, :integer
  end
end
