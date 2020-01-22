class AddReceiverIdToPosts < ActiveRecord::Migration[5.1]
  def change
    change_table :posts do |t|
      t.integer :receiver_id
    end
  end
end
