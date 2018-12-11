#{{{ Marathon
require_fixture 'default'
#}}} Marathon

severity("normal")

def test

    with_window("Demo Programs") {
        doubleclick("list_0", "com.sun.swingset3.demos.internalframe.InternalFrameDemo")
    }

    with_window("JInternalFrame Demo") {
      with_frame("Internal Frame Generator:0") {
        #Click on the Go Bananas icon.
           getBananas = driver.find_element(:css ,"button[iconFile = 'Go Bananas']")
           getBananas.click
           assert_equals getBananas , driver.find_element(:tag_name , "button")
           
        # CheckBox selection
           checkBoxSelect = driver.find_element(:css , "check-box[accessibleName = 'Iconifiable']")   
           checkBox  = select(checkBoxSelect, "false")
           
        # Click on the soccer ball icon.
           soccerButton = driver.find_element(:css , "button[iconFile = 'Soccer anyone?']")
           soccerButton.click
           
        # Get the fram title text field and modify the value.
            frameTitle = driver.find_element(:css , "text-field[precedingLabel = 'Frame title']")
            frameTitle.clear
            frameTitle.send_keys("Frame 1")
            assert_equals "Frame 1" , frameTitle.text
        }
    }

end
