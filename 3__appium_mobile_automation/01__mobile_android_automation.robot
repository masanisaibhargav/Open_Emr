*** Settings ***
Library     AppiumLibrary
*** Test Cases ***
TC1 Swipe
      [Documentation]     #Working with native appOpen Application
      Open Application    remote_url=http://localhost:4723/wd/hub
      ...     platformName=android
      ...     deviceName=one plus
      ...     appPackage=com.bewakoof.bewakoof
      ...     appActivity=com.bewakoof.bewakoof.MainActivity
      ...     noReset=true
      Set Appium Timeout    30s

      ${count}        Get Matching Xpath Count    xpath=//*[@text='Oversized T-shirt']
      WHILE    ${count}==0
      Swipe By Percent    90    70    90    20
      ${count}    Get Matching Xpath Count    xpath=//*[@text='Oversized T-shirt']
      END
      Click Element    xpath=//android.widget.TextView[@text='Profile']
      Wait Until Page Contains Element    xpath=//android.widget.TextView[@text=' GOOGLE ']
      Click Element    xpath=//android.widget.TextView[@text=' GOOGLE ']
      Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Masani Sai Bhargav Reddy']
      Click Element     xpath=//android.widget.TextView[@text='Masani Sai Bhargav Reddy']