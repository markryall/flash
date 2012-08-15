module Flash
  class Corpus
    def initialize *paths
      @phrases = []
      paths.each do |path|
        File.open path do |file|
          entry = []
          file.each_line do |line|
            if line.chomp.empty?
              @phrases << entry unless entry.empty?
              entry = []
            else
              entry << line.chomp.strip
            end
          end
          @phrases << entry unless entry.empty?
        end
      end
    end

    def phrase
      @phrases[rand(@phrases.count)].tap do |p|
        p.reverse! if flip?
      end
    end

    def flip?
      rand(2) == 0
    end
  end
end