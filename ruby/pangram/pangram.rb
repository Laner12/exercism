class Pangram

  def self.pangram?(phrase)
    sanitized_output = sanitize_phrase(phrase)
    total_characters_used = find_unique_characters(sanitized_output)
    true if total_characters_used.count == 26
  end

  def self.sanitize_phrase(phrase)
    phrase.downcase.gsub(/[^a-zA-Z]/, '').gsub(" ", "")
  end

  def self.find_unique_characters(sanitized_output)
    sanitized_output.split("").uniq
  end
end
