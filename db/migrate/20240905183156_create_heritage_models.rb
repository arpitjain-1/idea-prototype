class CreateHeritageModels < ActiveRecord::Migration[7.1]
  def change
    create_table :heritage_models do |t|
      t.string :title
      t.integer :ticket_price
      t.string :description
      t.references :district, foreign_key: true
      t.timestamps
    end
  end
end
