class CreateSignups < ActiveRecord::Migration[6.1]
  def change
    create_table :signups do |t|
      t.belongs_to :camper, nul: false, foreign_key: true
      t.belongs_to :activity, nul: false, foreign_key: true
      t.integer :time

      t.timestamps
    end
  end 
end
