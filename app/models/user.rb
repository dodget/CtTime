class User < ActiveRecord::Base
  has_many :specializations
  has_many :specialties, :through => :specializations
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


end
