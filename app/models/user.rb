class User < ActiveRecord::Base 
 has_many :skills
 has_many :projects through: :skills
end