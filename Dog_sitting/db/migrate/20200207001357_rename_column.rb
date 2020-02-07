class RenameColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :cities, "zip code", :zip_code

  end
end
