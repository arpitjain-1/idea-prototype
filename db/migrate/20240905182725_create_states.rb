class CreateStates < ActiveRecord::Migration[7.1]
  def change
    create_table :states do |t|
      t.string :state_name
      t.string :short_name
      t.timestamps
    end
  end
end