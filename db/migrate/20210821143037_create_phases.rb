class CreatePhases < ActiveRecord::Migration[6.1]
  def change
    create_table :phases do |t|
      t.string :managerid
      t.string :name_of_manager
      t.string :test_type
      t.string :BD_id
      t.string :due_date
      t.timestamps
    end
  end
end
