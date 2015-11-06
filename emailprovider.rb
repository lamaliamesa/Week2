class EmailProviderFake
  def initialize get_subjects
    @subjects = subjects
  end
  def get_subjects 
    @subjects

  end
end

class WordChecker
  def initialize subject_provider
    @subject_provider = provider
  end
  def check words
    subjects = @subject_provider.get_subjects
    words.reduce(true) do |result,word|
      result && subject_provider.any? {|subject| subject.include?(word)}
    end 
  end 
end


RSpec.describe "Word counter" do 
  describe "Email provider has no strings" do
    it "should return a true if no words given" do
      provider = EmailProviderFake.new([])
      counter = WordChecker.new(provider)
      expect(counter.check([])).to eq(true)
    end
  end
  describe "should return true when email provider has one word" do
    it"should return true when a word is included in a subject" do
      provider = EmailProviderFake.new(["hola"])
      counter = WordChecker.new(provider)
      expect(counter.check(["hola"])).to eq(true)
    end

    it"should return false when a word is not included in a subject" do
      provider = EmailProviderFake.new([""])
      counter = WordChecker.new(provider)
      expect(counter.check(["hola"])).to eq(false)
    end
  end

  it"should return false when some words are not included in a subject" do
    provider = EmailProviderFake.new(["hola laura"])
    counter = WordChecker.new(provider)
    expect(counter.check(["hola"])).to eq(false)
  end

end