class SearchPage
# selectors
SEARCH_FIELD = {name: 'q'}

attr_reader :driver

#class method
def initialize(driver)
	@driver = driver
end

def enter_search(searchTerm)
	element = @driver.find_element(SEARCH_FIELD)
	element.click
	element.send_keys searchTerm
	element.submit
end

def clickSearchResults(xpathResult)
	link = @driver.find_element(xpath: xpathResult)
	link.click
end

def get_result(elementResult)
	@driver.find_element(xpath: elementResult)
end

end