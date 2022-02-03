*** Settings ***
Documentation   To validate the login form
Library     SeleniumLibrary
Library     Collections
Library     DataDriver      file=resources/data.csv     encoding=utf_8   dialect=unix
Test Setup   open the browser with based on user input
#Test Teardown   close browser session
Resource     ../PageObjects/Generic.robot
Resource     ../PageObjects/LandingPage.robot
Test Template   Enter the new user details form
#*** Variables ***
#${Error_Message_Login}      css:.alert-danger
#@{listOfProducts}       Blackberry      Nokia Edge
#${country_name}     India

*** Test Cases ***
# default data can be given below and it will be used for execution incase if the data file did not open
Enter the new user details      ${FirstName}     ${LastName}        ${UserName}     ${Password}     ${Customer}     ${Role}     ${Email}       ${telephone}     TeladocUserFirstName        LastNameTeladoc     TeladocUserOne      Password@1014       15      2       NameRam@gmail.com       1234567890


*** Keywords ***
Enter the new user details form
        [Arguments]     ${FirstName}    ${LastName}        ${UserName}     ${Password}     ${Customer}      ${Role}     ${Email}       ${telephone}
        LandingPage.Click on the Add User button and Enter new user details     ${FirstName}    ${LastName}      ${UserName}     ${Password}     ${Customer}     ${Role}     ${Email}       ${telephone}











