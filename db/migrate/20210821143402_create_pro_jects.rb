class CreateProJects < ActiveRecord::Migration[6.1]
  def change
    create_table :pro_jects do |t|

      t.string :name_of_project
      t.string :managerid
      t.string :name_of_manager
      t.timestamps
    end
  end
end
