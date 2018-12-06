require 'selenium-webdriver'
require 'page-object/page_factory'
require_relative '../../../features/ProblemOne/pages/values'



Given(/^I launch exercise$/) do
  values_page = Values.new(@browser)
  values_page.navigateToPage
end

Then(/^All values are greater than 0$/) do
  values_page = Values.new(@browser)
  values_page.verifyValuesGreaterThan0
end

When(/^Doing sum of values$/) do
  values_page = Values.new(@browser)
  values_page.getSumOfValues()
end

Then(/^Total balance value is equal to sum of values$/) do
  values_page = Values.new(@browser)
  values_page.checkTotalBalanceAndSum()
end

When(/^Getting list of values$/) do
  values_page = Values.new(@browser)
  values_page.countOfValuesLenght()
end

Then(/^Total count of values is (\d+)$/) do |int|
  values_page = Values.new(@browser)
  values_page.valueCountIs(int).should == true
end

Then(/^Total balance (\d+) matches sum of values$/) do |sum|
  values_page = Values.new(@browser)
  values_page.matchTotalBalanceSum(sum)
end

Then(/^Values are formatted as currencies$/) do
  values_page = Values.new(@browser)
  currency = '$'
  values_page.valuesAsCurrencies(currency).should == true
end
