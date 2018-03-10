class Log < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :time_of_day, :presence => { :message => "When did you work on this habit today?" }

end
