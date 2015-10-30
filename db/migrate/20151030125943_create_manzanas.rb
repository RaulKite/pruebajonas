class CreateManzanas < ActiveRecord::Migration
  def change
    create_table :manzanas do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
