require "emoji"

module EmojiReplace
  path = "#{File.dirname(__FILE__)}/emoji_replace"

  autoload :Replacer, "#{path}/replacer"
end
