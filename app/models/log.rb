class Log < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :rating_of_the_day, :presence => { :message => "How did you feel working on this habit today?" }

  validates :time_of_day, :presence => { :message => "When did you work on this habit today?" }

end
