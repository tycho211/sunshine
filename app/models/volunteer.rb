class Volunteer < ActiveRecord::Base
  attr_accessible :address, :county, :email, :hours, :name, :phone
end
