class CreateConferences < ActiveRecord::Migration
  def change
    create_table :conferences do |t|
      t.string :name
      t.string :location
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
