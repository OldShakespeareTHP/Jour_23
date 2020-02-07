class Addcolumnstoprivatemessage < ActiveRecord::Migration[6.0]
  def change
    add_reference :private_messages, :sender, index: true
    add_reference :private_messages, :recipient, index: true
  end
end
