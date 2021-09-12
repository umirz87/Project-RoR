class CreatePhaseEngineers < ActiveRecord::Migration[6.1]
  def change
    create_table :phase_engineers do |t|

      t.timestamps
    end
  end
end
