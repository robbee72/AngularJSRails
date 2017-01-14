class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :index
      t.string :about

      t.timestamps
    end
  end
end
