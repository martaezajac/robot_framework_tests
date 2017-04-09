***Settings***
Library   Selenium2Library

***Variables***
${user}    
***Test Cases***
Test mail
  Open Browser    ${EMPTY}    FIREFOX
  Go To    http://wp.pl
  Sleep   10
  Click element    css=html body div#root div#application div div#header.header header._3iiJH div.qC45i div._1uXlV ul.rbY1o li a._1ZUKM
  Input text   id=login   testerwsb_t1
  Input text   id=password   adam1234
  Click element    id=btnSubmit
  Page should contain    Odebrane
Wrong password
  Open Browser    ${EMPTY}    FIREFOX
  Go To    http://wp.pl
  Sleep   10
  Click element    css=html body div#root div#application div div#header.header header._3iiJH div.qC45i div._1uXlV ul.rbY1o li a._1ZUKM
  Input text   id=login   testerwsb_t1
  Input text   id=password   invalid
  Click element    id=btnSubmit
  Page should not contain    Odebrane
Wrong user
  Open Browser    ${EMPTY}    FIREFOX
  Go To    http://wp.pl
  Sleep   10
  Click element    css=html body div#root div#application div div#header.header header._3iiJH div.qC45i div._1uXlV ul.rbY1o li a._1ZUKM
  Input text   id=login   invalid
  Input text   id=password   adam1234
  Click element    id=btnSubmit
  Page should not contain    Odebrane
Wrong Password and user
  Open Browser    ${EMPTY}    FIREFOX
  Go To    http://wp.pl
  Sleep   10
  Click element    css=html body div#root div#application div div#header.header header._3iiJH div.qC45i div._1uXlV ul.rbY1o li a._1ZUKM
  Input text   id=login   invalid
  Input text   id=password   whatever
  Click element    id=btnSubmit
  Page should not contain    Odebrane

***Keywords***
Open Browser to Mail Login Page
  Open Browser    ${EMPTY}    FIREFOX
  Go To    http://wp.pl
  Sleep   10
  Click element    css=html body div#root div#application div div#header.header header._3iiJH div.qC45i div._1uXlV ul.rbY1o li a._1ZUKM

Input User
  Input text   id=login   ${user}

Input password
  Input text   id=password   ${password}
