module Raindrops
  def self.convert(drops_num)
    sounds = [3, 5, 7].zip(['Pling', 'Plang', 'Plong']).map do |num, noise|
      noise if drops_num % num == 0
    end.join
    sounds == '' ? drops_num.to_s : sounds
  end
end

module BookKeeping
  VERSION = 3
end
