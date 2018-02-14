class SoundFactory
  def initialize(total_drops, sound_rules)
    @total_drops = total_drops
    @sound_rules = sound_rules
    @sound_rules.each { |sound, num| SoundFactory.define_sound sound, num }
  end

  def self.define_sound(sound, num)
    define_method(sound) { sound.capitalize if @total_drops % num == 0 }
  end
end

module Raindrops
  SOUND_RULES = { pling: 3, plang: 5, plong: 7, }

  def self.convert(drops_num)
    s = SoundFactory.new(drops_num, SOUND_RULES)
    sounds = "#{s.pling}#{s.plang}#{s.plong}"
    sounds.empty? ? drops_num.to_s : sounds
  end
end

module BookKeeping
  VERSION = 3
end
