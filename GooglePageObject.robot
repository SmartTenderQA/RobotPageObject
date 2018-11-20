*** Settings ***
Library         Selenium2Library
Library         GooglePageObject.py
Suite Setup     Selenium2Library.Open Browser    https://www.google.com/    browser=chrome
Suite Teardown  Selenium2Library.Close Browser


*** Test Cases ***
Search text
    GooglePageObject.Search    automated-testing.info
    ${locators}  GooglePageObject.get_locators
    ${title}=    Get Title
    Should contain    ${title}    automated-testing


*** Keywords ***
New Keyword2
	reload page