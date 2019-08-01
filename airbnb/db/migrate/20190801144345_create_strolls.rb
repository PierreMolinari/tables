class CreateStrolls < ActiveRecord::Migration[5.2]
  def change
    create_table :strolls do |t|
      t.datetime :date
      t.string :lieu
      t.belongs_to :dogsitter, index: true 
      t.timestamps
    end
  end
end
