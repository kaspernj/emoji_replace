require "spec_helper"

describe EmojiReplace::Seamless do
  let(:message) { build :message }

  it "replaces emojis" do
    message.message = "I ❤ you"

    expect(message.read_attribute(:message)).to eq "I %{emoji:heart} you"
    expect(message.message).to eq "I ❤ you"
  end

  it "replaces back to html" do
    expect(message.message(html: true)).to eq "I <img alt=\"heart\" class=\"emoji\" src=\"http://localhost:3000/heart.png\"> you"
  end
end
