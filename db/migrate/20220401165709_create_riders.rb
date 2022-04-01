class CreateRiders < ActiveRecord::Migration[7.0]
  def change
    create_table :riders do |t|
      t.string :firstName
      t.string :lastName
      t.string :city
      t.string :state
      t.string :position

      t.timestamps
    end
  end
end
