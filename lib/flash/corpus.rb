# coding: utf-8
module Flash
  module Corpus
    ALL = <<-EOF.split("\n").map {|line| line.chomp.strip.split "," }
    Nǐ hǎo,你好,Hello
    Zàijiàn,再见,Goodbye
    Bùyòng xiè,不用谢,You're welcome (more familar)
    Bù kèqì,不客气,You're welcome (more polite)
    EOF

    def phrase
      ALL[rand(ALL.count)]
    end
  end
end