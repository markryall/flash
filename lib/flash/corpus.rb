# coding: utf-8
module Flash
  class Corpus
    attr_accessor :phrases

    def initialize path
      self.phrases = File.read(path).split("\n").map {|line| line.chomp.strip.split "," }.select {|l| l.size > 1}
    end

    def phrase
      phrases[rand(phrases.count)].tap do |p|
        p.reverse! if flip?
      end
    end

    def flip?
      rand(2) == 0
    end
  end
end