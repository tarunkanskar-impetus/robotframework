*** Settings ***
Library    SeleniumLibrary
Library    ../Library/Utility.py  
Library    TestFile.person
          

Documentation    Test Document
#Suite Setup       Open Browser To Home Page
Resource        ../DataResource/Resource.robot
Suite Teardown    Close Browser


*** Keywords ***
    
*** Test Cases ***

TC_001
    [Tags]    SanityTest
   Emp Name
   TestFile.person.Sum 1    1    2
   log    Test Started
   ${data} =    Read Excel    null
   log     ${data}
   Fill Practise Form 
   Close Browser
   

TC_002
    
    [Tags]          RegressionTest    
    log             GoogleTest
    Open Browser    https://www.google.com    chrome
	Input Text    //input[@name="q"]    robotframework
	#Actions.Press Enter Key
	Click Element    //h3[@class="LC20lb"]
	Click Link    //a[@href="#examples"]
	Click Link    //a[@id="__BVID__44___BV_tab_button__"]
	Click Link    //a[@id="__BVID__48___BV_tab_button__"]
	Click Link    //a[@id="__BVID__50___BV_tab_button__"]
	Click Link    //a[@id="__BVID__52___BV_tab_button__"]
	Click Link    //a[@id="__BVID__54___BV_tab_button__"]
	

