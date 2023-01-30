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
      # Wait Until Page Contains Element     xpath=//*[@text='Oversized T-shirt']
      #Click Element     xpath=//*[@text='Oversized T-shirt']
      #Click Element    xpath=//android.widget.Image[@text='Sweatshirts and Hoodies']
      #Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='ADD TO BAG']
      #Click Element    xpath=//android.widget.TextView[@text='ADD TO BAG']
      #Click Element    xpath=//android.widget.Image[@text='Full sleeves t-shirts']
      #Click Element    xpath=//android.widget.TextView[@text='ADD TO BAG']
      Click Element    xpath=//android.widget.TextView[@text='Profile']
      Wait Until Page Contains Element    xpath=//android.widget.EditText[@text='Enter Mobile Number']
      Click Element    xpath=//android.widget.EditText[@text='Enter Mobile Number']
      Input Text    xpath=//android.widget.EditText[@text='Enter Mobile Number']       8105950621
      Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='CONTINUE']
      Click Element    xpath=//android.widget.TextView[@text='CONTINUE']