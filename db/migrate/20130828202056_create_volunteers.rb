class CreateVolunteers < ActiveRecord::Migration
  def change
    create_table :volunteers do |t|
      t.string :name
      t.text :address
      t.string :county
      t.string :phone
      t.string :email
      t.string :hours

      t.timestamps
    end
  end
end
