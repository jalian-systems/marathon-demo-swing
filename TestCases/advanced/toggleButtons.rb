#{{{ Marathon
require_fixture 'default'
#}}} Marathon

severity("normal")

def test

    with_window("Demo Programs") {
        doubleclick("list_0", "com.sun.swingset3.demos.togglebutton.ToggleButtonDemo")
    }

    with_window("ToggleButtons Demo") {
      # Click on the radioButton 'Radio One'.
          radioOne = driver.find_element(:css , "radio-button[indexOfType ='0']")
          radioOne.click
    
      # Click on the radioButton 'Radio Two'.
          radioTwo = driver.find_element(:css ,"radio-button[indexOfType ='4']")
          radioTwo.click
      
      # Click on the Check Box 'Paint Focus'
          paintFocus = driver.find_element(:css , "check-box[accessibleName = 'Paint Focus']")
          paintFocus.click
    }

end
