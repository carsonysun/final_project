class Category < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :name, :uniqueness => { :message => "This category already exists!" }

  validates :name, :presence => { :message => "What habit category would you like to add?" }

  validates :name, :length => { :minimum => 1, :maximum => 25 }

end
