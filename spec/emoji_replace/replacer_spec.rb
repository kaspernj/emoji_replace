require "spec_helper"

describe EmojiReplace::Replacer do
  let(:str_with_heart) { "I ❤ you" }
  let(:replacer) { EmojiReplace::Replacer.new(text: str_with_heart) }

  it "#replace" do
    expect(replacer.replace.text).to eq "I %{emoji:heart} you"
  end

  it "#back" do
    expect(replacer.replace.back.text).to eq "I <img alt=\"heart\" class=\"emoji\" src=\"http://localhost:3000/heart.png\"> you"
  end
end
