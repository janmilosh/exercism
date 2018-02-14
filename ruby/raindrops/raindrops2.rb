module Raindrops
  def self.convert(drops_num)
    sounds = [3, 5, 7].map { |num| self.sound(drops_num, num)  }.join
    sounds == '' ? drops_num.to_s : sounds
  end

  def self.sound(drops_num, num)
    case
    when (num == 3 && drops_num % 3 == 0) then 'Pling'
    when (num == 5 && drops_num % 5 == 0) then 'Plang'
    when (num == 7 && drops_num % 7 == 0) then 'Plong'
    end
  end
end

module BookKeeping
  VERSION = 3
end
