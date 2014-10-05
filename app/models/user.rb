class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :orders

  validates :name , presence: true
  validates :last_name , presence: true
  validates :phone , presence: true
  validates :role, inclusion: { in: 0..1 } , numericality: { integer_only: true } 
end
