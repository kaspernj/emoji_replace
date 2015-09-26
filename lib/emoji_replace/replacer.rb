class EmojiReplace::Replacer
  attr_reader :text

  def initialize(args)
    @text = args.fetch(:text).dup
    @index = Emoji::Index.new
  end

  def replace
    @text.gsub!(@index.unicode_moji_regex) do |moji|
      moji = @index.find_by_moji(moji)
      "%{emoji:#{moji.fetch('name')}}"
    end

    return self
  end

  def back(args = {})
    @text.gsub!(/%\{emoji:(.+?)\}/) do |moji_str|
      match = moji_str.match(/%\{emoji:(.+?)\}/)
      moji_name = match[1]
      moji = @index.find_by_name(moji_name)

      "<img alt=\"#{moji.fetch("name")}\" class=\"emoji\" src=\"#{Emoji.image_url_for_name(moji_name)}\">"
    end

    return self
  end
end
