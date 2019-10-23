*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Start URL}    https://www.google.com/
${BROWSER}    chrome
${Target URL}    www.cs.kku.ac.th

*** Test Cases ***
Open Browswer:
    Open Browser    ${Start URL}    ${BROWSER}
    
	
Search URL:	
	Input Text    q    ${Target URL}
	Submit Form    
	Wait Until Page Contains    CS KKU - มหาวิทยาลัยขอนแก่น
	Close Browser