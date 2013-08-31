class CreateVoters < ActiveRecord::Migration
  def change
    create_table :voters do |t|
      t.string :name
      t.string :address
      t.string :county
      t.string :phone
      t.string :email
      t.string :assigned_volunteer
      t.string :party_affiliation
      t.boolean :confirmed_vote

      t.timestamps
    end
  end
end
