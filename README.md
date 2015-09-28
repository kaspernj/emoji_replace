[![Build Status](https://api.shippable.com/projects/5608fd811895ca4474187ec1/badge?branchName=master)](https://app.shippable.com/projects/5608fd811895ca4474187ec1/builds/latest)
[![Code Climate](https://codeclimate.com/github/kaspernj/emoji_replace/badges/gpa.svg)](https://codeclimate.com/github/kaspernj/emoji_replace)
[![Test Coverage](https://codeclimate.com/github/kaspernj/emoji_replace/badges/coverage.svg)](https://codeclimate.com/github/kaspernj/emoji_replace/coverage)

# EmojiReplace

A library to work around the special UTF8MB4 encoding in Ruby and Ruby on Rails.

## Install

Add this to your Gemfile and bundle:

```ruby
gem "emoji_replace"
```

## Seamless usage

Modify your model like this:

```ruby
class Message < ActiveRecord::Base
  include EmojiReplace::Seamless
  replace_emoji_seamlessly :message
end
```

You can now call the attributes like normal:

```ruby
message.message = "I ❤ you"
message.message #=> "I ❤ you"
message.read_attribute(:message) #=> "I %{emoji:heart} you"
message.message(html: true) #=> "I <img alt=\"heart\" class=\"emoji\" src=\"http://localhost:3000/heart.png\"> you"
```

## Manual usage

If you don't want the seamless functionality, you can also perform the replace manually like this:

Replace emoji's to the code format:
```ruby
replacer = EmojiReplace::Replacer.new(text: "I ❤ you")
replacer.replace
replacer.text #=> "I %{emoji:heart} you"
```

Replace the code format back to emoji's:
```ruby
replacer = EmojiReplace::Replacer.new(text: "I %{emoji:heart} you")
replacer.back
replacer.text #=> "I ❤ you"
```

Replace the code format back to HTML:
```ruby
replacer = EmojiReplace::Replacer.new(text: "I %{emoji:heart} you")
replacer.back(html: true)
replacer.text #=> "I <img alt=\"heart\" class=\"emoji\" src=\"http://localhost:3000/heart.png\"> you"
```

## Contributing to emoji_replace

* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2015 kaspernj. See LICENSE.txt for
further details.

