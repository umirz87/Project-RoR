class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :commented_by
      t.text :Description
      t.timestamps
    end
  end
end
