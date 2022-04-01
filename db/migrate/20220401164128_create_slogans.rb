class CreateSlogans < ActiveRecord::Migration[7.0]
  def change
    create_table :slogans do |t|
      t.string :firstName
      t.string :lastName
      t.string :email
      t.string :suggestion

      t.timestamps
    end
  end
end
