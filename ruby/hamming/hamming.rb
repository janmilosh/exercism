module Hamming  
  def self.compute(str1, str2)
    validate(str1, str2)
    count(str1, str2)
  end

  def self.count(str1, str2)
    mismatches = str1.chars.zip(str2.chars).reject do |a, b|
      a == b
    end
    mismatches.size
  end

  def self.validate(str1, str2)
    raise(ArgumentError) unless str1.size == str2.size
  end
end

module BookKeeping
  VERSION = 3
end
