*** Setting ***
Resource          GoogleSearch_PageObject.robot

Test Setup        GoogleSearch_PageObject.Open    ${URL}
Test Teardown     GoogleSearch_PageObject.Close


*** Variable ***
${BROWSER_OPENED}    ${false}
${BROWSER}        chrome
${URL}            http://www.google.com
${SEARCH_TERM}    selenium


*** Test Case ***
When The User Searches For Selenium The Results Page Title Should Contain Selenium
	GoogleSearch_PageObject.Search For    ${SEARCH_TERM}
    ${result} =    GoogleSearch_PageObject.Get Title
    Should Contain    ${result}    ${SEARCH_TERM}