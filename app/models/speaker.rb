class Speaker < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :suffix, :company_name, :title, :bio, :img, :twitter, :email
end