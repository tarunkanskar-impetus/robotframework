*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           SeleniumLibrary
           
Variables        ../Library/variables.py



*** Variables ***
${BROWSER}           chrome
${DELAY}             0
${LOGIN URL}         http://www.globalsqa.com/demo-site/



*** Keywords ***
    
Open Browser To Home Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    #Home Page Should Be

Home Page Should Be 
    Title Should Be    Register
    
Fill Practise Form
	
	Click Link    xpath=(//a[@href="http://www.globalsqa.com/samplepagetest/"])[3]
	Input Text    //input[@name="g2599-name"]    ${firstName} ${lastName}
	Input Text    //input[@name="g2599-email"]    ${email}
	Input Text    //input[@name="g2599-website"]    test webiste
	Select From List By Value    //select[@name="g2599-experienceinyears"]    5-7
	Click Element    xpath=(//input[@name="g2599-expertise[]"])[2]
	Click Element    //input[@name="g2599-education"]
	Input Text    //textarea[@name="g2599-comment"]    test comment
	Click Element    //input[@class="pushbutton-wide"]
