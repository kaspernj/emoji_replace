module EmojiReplace::Seamless
  def self.included(base)
    base.class_eval do
      def self.replace_emoji_seamlessly(attribute_name)
        define_method(attribute_name) do |*args|
          value = super(*[])
          opts = args.first || {}
          return EmojiReplace::Replacer.new(text: value).back(opts).text
        end

        define_method("#{attribute_name}=") do |new_value|
          new_value = EmojiReplace::Replacer.new(text: new_value).replace.text
          super(new_value)
        end
      end
    end
  end
end
