module Pangram
  def self.pangram?(phrase)
    ([*'a'..'z'] - phrase.downcase.chars).empty?
  end
end

module BookKeeping
  VERSION = 6
end
