require 'cucumber'
  require 'selenium-webdriver'
  require 'pry'
  require 'rspec'
  require 'page-object'
  require 'watir'

include Selenium

chrome_options = Selenium::WebDriver::Chrome::Options.new
chrome_options.add_argument('--headless')
chrome_options.add_argument('--disable-gpu')
chrome_options.add_argument("window-size=1024,768")
chrome_options.add_argument("--no-sandbox")
chrome_options.add_argument("--disable-dev-shm-usage")
Selenium::WebDriver::Chrome.driver_path='E:/chromedriver.exe'
browser = Selenium::WebDriver.for :chrome, options: chrome_options

Before do
  @browser = browser
end