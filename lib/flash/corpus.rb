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
    Líng,零,Zero
    Yī,一,One
    Èr,二,Two
    Sān,三,Three
    Sì,四,Four
    Wǔ,五,Five
    Liù,六,Six
    Qī,七,Seven
    Bā,八,Eight
    Jiǔ,九,Nine
    Shí,十,Ten
    Shíyī,十一,Eleven
    Shí'èr,十二,Twelve
    Shísān,十三,Thirteen
    Shísì,十四,Fourteen
    Shíwǔ,十五,Fifteen
    Shíliù,十六,Sixteen
    Shíqī,十七,Seventeen
    Shíbā,十八,Eighteen
    Shíjiǔ,十九,Nineteen
    Èrshí,二十,Twenty
    Sānshí,三十,Thirty
    Bǎi,百,One Hundred
    Yībǎi líng yī,一百零一,One hundred and one
    Yībǎi yī,一百一,One hundred and ten
    Yībǎi yīshí,一百一十,One hundred and ten
    Yīqiān,一千,One thousand
    Bù hǎoyìsi qǐng ràng yīxià,不好意思请让一下,Excuse me please let me past
    Zàijiàn,再见,Goodbye
    Míngtiān jiàn,明天见,See you tomorrow
    Yīmáobùbá,一毛不拔,Stingy
    Duìbùqǐ,对不起,I am sorry
    Méiguānxì,没关系,Nevermind/That's ok

    EOF

    def phrase
      ALL[rand(ALL.count)].tap do |p|
        p.reverse! if flip?
      end
    end

    def flip?
      rand(2) == 0
    end
  end
end