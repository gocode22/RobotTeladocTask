*** Settings ***
Documentation   Page objects and Keywords belongs to landing page
Library     SeleniumLibrary
Resource    Generic.robot

*** Variables ***
${add_user_btn}      //button[@type='add']
${firstname_textbox}         css:input[name='FirstName']
${lastname_txtbox}    css:input[name='LastName']
${username_txtbox}    css:input[name='UserName']
${password_textbox}   css:input[name='Password']
${email_textbox}      css:input[name='Email']
${cellphone_textbox}      css:input[name='Mobilephone']
${role_dropdown}        css:select[name='RoleId']
*** Keywords ***
Click on the Add User button and Enter new user details
        [arguments]     ${FirstName}        ${LastName}        ${UserName}     ${Password}     ${Customer}     ${Role}     ${Email}       ${telephone}
        Click Button        ${add_user_btn}
        input text          ${firstname_textbox}        ${FirstName}
        input text          ${lastname_txtbox}        ${LastName}
        input text          ${username_txtbox}       ${UserName}
        Input Password      ${password_textbox}      ${Password}
        Select Radio Button  optionsRadios      ${Customer}
        Select From List By Value    ${role_dropdown}   ${Role}
        input text      ${email_textbox}     ${Email}
        input text      ${cellphone_textbox}    ${telephone}
        click button    css:button.btn.btn-success