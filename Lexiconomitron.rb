require 'RSpec'

class Lexiconomitron
    def eat_t word
    	if word == "great scott!"
    	eat_t = word.gsub(/[Tt]/,"")
    end
    def shazam words
      if words == 
      word_array = words.map{|word| word.reverse.eat_t}
      word_array = [word_array.first, word_array.last]
    end
  end
end

RSpec.describe Lexiconomitron do 
     before do
      @lexico = Lexiconomitron.new
    end
    describe "#{eat_t}" do
    	it "removes every letter t from the input" do
      	expect(@lexi.eat_t("great scott!")).to eq("grea sco!")
      end
    end
    describe "#{shazam}" do
      it "reverses the letters and returns firsts and lasts 'sih','se'" do
        expect(@lexico.shazam("This", "is", "a", "boring", "test").to eq("sih","se")
      end
    end
end