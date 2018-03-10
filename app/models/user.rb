class User < ApplicationRecord
  # Direct associations

  has_many   :habits,
             :dependent => :destroy

  # Indirect associations

  has_many   :categories,
             :through => :habits,
             :source => :category

  # Validations

  validates :username, :uniqueness => { :message => "This username has already been taken!" }

  validates :username, :presence => { :message => "Pick a username" }

  validates :username, :length => { :minimum => 5, :maximum => 20 }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
