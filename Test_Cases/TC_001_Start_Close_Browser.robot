*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Firefox
${URL}    https://www.thetestingworld.com/index.php?option=com_users&view=registration&Itemid=588
${username}    Testingname
${email}    Testingworld@gmail.com
${password}    secretpass



*** Test Cases ***
TC_001_Browser Start and Close
    open browser    ${URL}  ${Browser}
    maximize browser window
    ${defoult_t}=    get selenium implicit wait
    log to console    ${defoult_t}
    set selenium implicit wait    2 seconds
    ${defoult_t}=    get selenium implicit wait
    log to console    ${defoult_t}
    Enter Username Password Email  ${username}  ${email}  ${password}
    capture page screenshot   Screenshots/TC1.png
    execute javascript    window.scrollTo(0,1000)
    sleep    10 seconds
    close browser
*** Keywords ***
Enter Username Password Email
    [Arguments]    ${username}  ${email}  ${password}
    input text    name:jform[name]    ${username}
    input text    name:jform[username]    ${email}
    input text    name:jform[password1]    ${password}


