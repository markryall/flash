# coding: utf-8
module Flash
  module Corpus
    ALL = <<-EOF.split("\n").map {|line| line.chomp.strip.split "," }
    Nǐ hǎo,你好,Hello
    Zàijiàn,再见,Goodbye
    Bùyòng xiè,不用谢,You're welcome (more familar)
    Bù kèqì,不客气,You're welcome (more polite)
    Xièxiè,谢谢,Thank you
    Mǎ,马,Horse
    Kè,克,Gram
    Mā,妈,Mum
    Wǒ bù huì jiǎng zhōngwén,我不会讲中文,I do not speak Chinese
    Zǎoshang hǎo,早上好, Good morning
    Zhōngwǔ hǎo,中午好,Good afternoon
    Wǎnshàng hǎo,晚上好,Good evening
    Wǎn'ān,晚安,Good night
    Duōshǎo qián,多少钱,How much money
    Zhège,这个,This
    Qīn'ài de,亲爱的,Darling
    EOF

    def phrase
      ALL[rand(ALL.count)]
    end
  end
end