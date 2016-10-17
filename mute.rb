require "rubygems"
require "dream_cheeky"

DreamCheeky::BigRedButton.run do
  push do
    system("osascript -e 'tell application \"System Events\" to keystroke \"d\" using {command down}'")
  end
end
