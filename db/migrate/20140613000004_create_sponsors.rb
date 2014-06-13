class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.string :company_name
      t.string :image
      t.text :description
      t.string :site_url

      t.timestamps
    end
  end
end
