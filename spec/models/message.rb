class Message < ActiveRecord::Base
  include EmojiReplace::Seamless
  replace_emoji_seamlessly :message
end
