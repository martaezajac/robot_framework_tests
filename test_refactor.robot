***Settings***
Library   Selenium2Library
Suite Setup    Open Browser    ${EMPTY}    FIREFOX
Suite Teardown    Close All Browsers
Test Setup    Go to Mail Login Page


***Variables***
${valid username}    testerwsb_t1
${valid password}    adam1234


***Test Cases***


Wrong password
  Input text   id=login   ${valid username}
  Input text   id=password   invalid
  Submit
  Page should not contain    Odebrane
Wrong user
  Input text   id=login   invalid
  Input text   id=password   ${valid password}
  Submit
  Page should not contain    Odebrane
Wrong Password and user
  Input text   id=login   invalid
  Input text   id=password   whatever
  Submit
  Page should not contain    Odebrane
Correct user and password
    Input text   id=login   ${valid username}
    Input text   id=password   ${valid password}
    Submit
    Page should contain    Odebrane
    #Sleep    5
    #Click element    xpath=/html/body/div[4]/div/div[3]/div[2]/a

***Keywords***

Go to Mail Login Page
  Go To    http://wp.pl
  Sleep   10
  Click element    css=html body div#root div#application div div#header.header header.T1pLFKY div.T140_Mc div.T2oYHDm ul.T3IPkbf li a.QsJaMZ
Submit
  Click element    id=btnSubmit

#Input User
  #Input text   id=login   ${user}

#Input password
  #Input text   id=password   ${password}
