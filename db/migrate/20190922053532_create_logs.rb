class CreateLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :logs do |t|
      t.datetime :end_time
      t.datetime :total_time
      t.string :upadate
      t.string :new
      t.references  :card, null: false
      
      t.timestamps
    end
  end
end
