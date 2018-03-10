class Habit < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :motivation, :length => { :minimum => 1, :maximum => 100 }

  validates :name, :uniqueness => { :message => "You are already working on this habit!" }

  validates :name, :presence => { :message => "What specific habit would you like to develop?" }

  validates :name, :length => { :minimum => 1, :maximum => 50 }

end
