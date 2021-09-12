class CreateUserPhases < ActiveRecord::Migration[6.1]
  def change
    create_table :user_phases do |t|

      t.timestamps
    end
  end
end
