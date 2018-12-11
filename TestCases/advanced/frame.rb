#{{{ Marathon
require_fixture 'default'
#}}} Marathon

severity("normal")

def test
    with_window("Demo Programs") {
        doubleclick("list_0", "com.sun.swingset3.demos.frame.FrameDemo")
    }

    with_window("Demo JFrame") {
      # Find the toolbar button and click.
          tb = driver.find_element(:css , "button[accessibleName='Toolbar Button']")
          tb.click
          assert_equals tb , driver.find_element(:tag_name , "button")
      
      # find and select the File menu.
          fileMenuBtn = driver.find_element(:css ,"menu[accessibleName='File']")
          fileMenuBtn.click
        
      # Select SAVE and OPEN from the file menu.
          saveButton = driver.find_element(:css ,"menu-item[accessibleName = 'Save']")
          saveButtonSelect = select(saveButton ,"true")
          fileMenuBtn.click
          openButton = driver.find_element(:css , "menu-item[accessibleName = 'Open']")
          openButton.click
          window_closed("Demo JFrame")
    }

    with_window("com.sun.swingset3.demos.frame.FrameDemo") { 
      
      # Checkbox selection for frame busy.
         checkBox = driver.find_element(:css,"check-box[accessibleName='Frame busy']")
         checkBoxSelect = select(checkBox , "true")
         assert_true checkBox.selected?
         checkBoxSelect = select(checkBox , "false")
         assert_true !checkBox.selected?
    }

    with_window("com.sun.swingset3.demos.frame.FrameDemo") {
      
      #select show JFrame button.
        showFrame = driver.find_element(:css , "button[accessibleName = 'Show JFrame...']")
        showFrame.click
        assert_true showFrame.enabled?
    }
end
