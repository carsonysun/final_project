class Category < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :name, :length => { :minimum => 1, :maximum => 25 }

end
