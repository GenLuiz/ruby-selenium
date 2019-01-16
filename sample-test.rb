require "selenium-webdriver"
require "rspec"
require_relative "SearchPage.rb"

navigateTo = "http://google.com"
searchTerm = "Hello WebDriver!"
resultLink = "//*[contains(text(),'Hello Selenium')]"
pageResultLink = "//a[contains(text(),'All Tutorials')]"
textTofind = "ALL TUTORIALS"


# TEST: Google Search
describe "Search for selenium webdriver" do
	describe "confirm search" do
		it "Confirm that a user can successfully search" do
			# @driver to make it accessible everywhere
			@driver = Selenium::WebDriver.for :remote, url: 'http://localhost:4444/wd/hub', desired_capabilities: :chrome
			# Go to google
			@driver.navigate.to navigateTo
			# Fill and submit form
			searchPage = SearchPage.new(@driver)
			searchPage.enter_search(searchTerm)
			# Confirm user search is complete
			searchPage.clickSearchResults(resultLink)

			tutorialsLink = searchPage.get_result(pageResultLink)
			tutorialsText = tutorialsLink.text
			expect(tutorialsText).to eq(textTofind)

			@driver.quit
		end
	end
end