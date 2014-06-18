class CreateSpeakers < ActiveRecord::Migration
  def change
    create_table :speakers do |t|
      t.string :first_name
      t.string :last_name
      t.string :suffix
      t.string :company_name
      t.string :title
      t.string :bio
      t.string :img
      t.string :twitter
      t.string :email

      t.timestamps
    end
  end
end
