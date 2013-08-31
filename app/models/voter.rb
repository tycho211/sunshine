class Voter < ActiveRecord::Base
  attr_accessible :address, :assigned_volunteer, :confirmed_vote, :county, :email, :name, :party_affiliation, :phone

  def assigned_volunteer
  end

end
