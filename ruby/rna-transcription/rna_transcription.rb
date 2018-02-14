module Complement
  NUCLEOTIDE_COMPLEMENTS = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }.freeze

  def self.of_dna(str)
    str.each_char.map do |nucleotide|
      NUCLEOTIDE_COMPLEMENTS.fetch(nucleotide)
    end.join
  rescue KeyError
    ''
  end
end

module BookKeeping
  VERSION = 4
end
