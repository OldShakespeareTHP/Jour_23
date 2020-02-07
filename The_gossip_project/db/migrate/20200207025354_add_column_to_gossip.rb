class AddColumnToGossip < ActiveRecord::Migration[6.0]
  def change
    add_reference :gossips, :user, index: true
  end
end
