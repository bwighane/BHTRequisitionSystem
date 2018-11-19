class CreateProjectSitesJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :projects, :sites 
  end
end
