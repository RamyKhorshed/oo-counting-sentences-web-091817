require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    output = self.split(/(\.|\?|\!)/)
    output = output.count { |w|  !w.sentence? && !w.question? && !w.exclamation? && w != ''}

  end
end
