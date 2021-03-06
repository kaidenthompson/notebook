class RenameUniverseTechnologiesToTechnology < ActiveRecord::Migration
  def change
    rename_column :universes, :technologies, :technology if column_exists?(:universes, :technologies) && !column_exists?(:universes, :technology)
  end
end
