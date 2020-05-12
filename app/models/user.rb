class User < ApplicationRecord
  has_many :rosters
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable,
         :confirmable, :lockable, :timeoutable
end
