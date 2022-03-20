class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|

      t.string :name
      t.string :surname
      t.date :birth_date
      t.integer :dni

      t.timestamps
    end
  end
end
