class CreateDirectories < ActiveRecord::Migration
  def change
    create_table :directories do |t|
      t.string :number
      t.string :name

      t.timestamps null: false
    end
  end
end
