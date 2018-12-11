#{{{ Marathon
require_fixture 'default'
#}}} Marathon

severity("normal")

def test

    # with_window does the following:
    # 1. Change the webdriver context to the window given (driver.switch_to.window)
    # 2. Identify and change the objectmap context
      with_window("Demo Programs") {
          doubleclick("list_0", "com.sun.swingset3.demos.dialog.DialogDemo")
      }

    # We can perform operations without going through the objectmap
    # by using webdriver calls directly
    
      driver.switch_to.window('Demo JDialog')
      driver.close
    
    # with_window("com.sun.swingset3.demos.dialog.DialogDemo") {
    #     click("Show JDialog...")
    # }

      driver.switch_to.window("com.sun.swingset3.demos.dialog.DialogDemo")
      driver.find_element(:tag_name, 'button').click
    

    # with_window("Demo JDialog") {
    #     window_closed("Demo JDialog")
    # }

      driver.switch_to.window('Demo JDialog')
      driver.close
    
end
