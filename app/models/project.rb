class Project < ActiveRecord::Base
  has_many :notes
  
  def self.find_by_github(id)
    self.where(github_repo_id: id)
  end
end
