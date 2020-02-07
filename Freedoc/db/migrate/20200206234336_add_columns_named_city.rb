class AddColumnsNamedCity < ActiveRecord::Migration[6.0]
  def change
    tables = ActiveRecord::Base.connection.tables - ["schema_migrations"]
    tables.each do |table|
      add_column table, :city, :string
    end
  end
end
