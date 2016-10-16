require "rubygems"
require "dream_cheeky"
require "watir-webdriver"

DreamCheeky::BigRedButton.run do
  browser = Watir::Browser.new:chrome
  browser.goto "https://hangouts.google.com"

  push do
    muteButton = browser.element(:class, "ha-w-P-y-Xi-f").parent;
    if muteButton.exists?
      muteButton.click
      puts "Mute button clicked"
    else
      puts "No mute button found"
    end
  end
end

# JS Alternative
# browser.execute_script("var el = document.querySelector('.ha-w-P-y-Xi-f').parentNode; el.dispatchEvent(new MouseEvent('mousedown')); el.dispatchEvent(new MouseEvent('mouseup')); el.dispatchEvent(new MouseEvent('mouseout'));")
