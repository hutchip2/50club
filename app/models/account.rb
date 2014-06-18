class Account < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable

  ALLOWED_ROLES = ['user', 'admin']

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  #has_many :media, :dependent => :destroy
  #has_many :photos, :through => :media
  #has_many :videos, :through => :media

  has_one :contact_info

  accepts_nested_attributes_for :contact_info


  validates :role, :presence => true, :inclusion => { :in => ALLOWED_ROLES, :message => 'is not a valid role' }

  delegate :first_name, :last_name, :community, :subregion, :country, :avatar, :to => :contact_info

  attr_accessible :email, :role, :password, :password_confirmation, :remember_me, :contact_info_attributes, :as => [:default, :admin]

  #### Instance Methods ####

  def admin?
    self.role.eql?('admin')
  end

  def user?
    self.role.eql?('user')
  end

end
