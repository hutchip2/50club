class ContactInfo < ActiveRecord::Base

  belongs_to :account
  attr_accessible :first_name, :last_name, :subregion, :country, :account_id, :avatar, :community
  mount_uploader :avatar, AvatarUploader

end
