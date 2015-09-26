require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "EmojiReplace" do
  let(:message) { build :message }

  it "replaces emojis" do
    message.replace_emojis
    expect(message.message).to eq "Hello :-)"
  end
end
