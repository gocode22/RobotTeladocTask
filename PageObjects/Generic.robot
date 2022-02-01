*** Settings ***
Documentation    Resource file with reusable keyword
Library     SeleniumLibrary

*** Variables ***
${url}      http://www.way2automation.com/angularjs-protractor/webtables/
${browser_name}     Firefox


*** Keywords ***
open the browser with based on user input
     Create Webdriver    ${browser_name}  executable_path=/Users/vaith/chromeDriver/geckodriver
     Go To   ${url}

close browser session
    Close Browser

wait until the element passed is located in the page
    [arguments]     ${page_locator}
    wait until element is visible           ${page_locator}