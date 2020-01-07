require "agiantbird_palindrome/version"

module AgiantbirdPalindrome

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    if processed_content.empty?
      false
    else
      processed_content == processed_content.reverse
    end
  end

  private

    # Returns content for palindrome testing.
    def processed_content
      self.to_s.scan(/[a-z0-9]/i).join.downcase
    end
end

class String
  include AgiantbirdPalindrome
end

class Integer
  include AgiantbirdPalindrome
end
