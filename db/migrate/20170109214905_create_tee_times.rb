class CreateTeeTimes < ActiveRecord::Migration
  def change
    create_table :tee_times do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
