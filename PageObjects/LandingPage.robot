*** Settings ***
Documentation   Page objects and Keywords belongs to landing page
Library     SeleniumLibrary
Resource    Generic.robot

*** Variables ***
${add_user_btn}      //button[@type='add']
${ffirstname}         css:input[name='FirstName']

*** Keywords ***
Click on the Add User button and Enter new user details
        [arguments]     ${FirstName}
        Click Button        ${add_user_btn}
        input text          ${ffirstname}        ${FirstName}