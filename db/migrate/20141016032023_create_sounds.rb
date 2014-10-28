class CreateSounds < ActiveRecord::Migration
  def change
    create_table :sounds do |t|
      t.string :name
      t.string :format
      t.string :length
      t.string :size

      t.timestamps
    end
  end
end
