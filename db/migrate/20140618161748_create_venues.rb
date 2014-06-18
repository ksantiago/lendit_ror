class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :zip_code
      t.string :phone_number
      t.string :site_url

      t.timestamps
    end
  end
end
