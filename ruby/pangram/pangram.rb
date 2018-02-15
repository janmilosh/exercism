module Pangram
  def self.pangram?(phrase)
    alpha = ('a'..'z').to_a
    phrase.downcase.split('').uniq.sort.select { |x| alpha.include? x } == alpha
  end
end

module BookKeeping
  VERSION = 6
end
