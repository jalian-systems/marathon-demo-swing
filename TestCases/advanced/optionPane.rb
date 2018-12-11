#{{{ Marathon
require_fixture 'default'
#}}} Marathon

severity("normal")

def test

    with_window("Demo Programs") {
        doubleclick("list_0", "com.sun.swingset3.demos.optionpane.OptionPaneDemo")
    }

    with_window("JOptionPane Demo") {
      # Select the input dialog.
        inputDialog = driver.find_element(:css , "button[accessibleName = 'Show Input Dialog']")
        inputDialog.click
       
        with_window("Input") {
          # Enter the text inside the input text field.
            textField = driver.find_element(:css , "multiplexing-text-field")
            textField.clear
            textField.send_keys("JSPL")
            textOK = driver.find_element(:css , "button[accessibleName = 'OK']")
            textOK.click
            assert_equals "JSPL" , textField.text
        }

        with_window("Message") {
          okButton = driver.find_element(:css , "button[accessibleName = 'OK']")
          okButton.click
        }
        
        driver.switch_to.window("JOptionPane Demo")

        # Click on the warning dialog.
          warningDialog = driver.find_element(:css , "button[accessibleName = 'Show Warning Dialog']")
          warningDialog.click
          assert_equals "Show Warning Dialog" , warningDialog.text

          with_window("Warning Dialog Example") {
            okBtn = driver.find_element(:css , "button[accessibleName = 'OK']")
            okBtn.click
          }
          
          driver.switch_to.window("JOptionPane Demo")
         
        # Select the Message Dialog.
          msgDialog = driver.find_element(:css , "button[accessibleName = 'Show Message Dialog']")
          msgDialog.click
          assert_equals "Show Message Dialog" , msgDialog.text

          with_window("Message") {
           oKButn = driver.find_element(:css , "button[accessibleName = 'OK']")
           oKButn.click
          }
          
          driver.switch_to.window("JOptionPane Demo")
         
        # Select Confirmation Dialog.
          confirmDialog = driver.find_element(:css , "button[accessibleName = 'Show Confirmation Dialog']")
          confirmDialog.click
          assert_equals "Show Confirmation Dialog" , confirmDialog.text

          with_window("Select an Option") {
            yesButton = driver.find_element(:css , "button[accessibleName = 'Yes']")
            yesButton.click
          }

          with_window("Message") {
            okayBtn = driver.find_element(:css , "button[accessibleName = 'OK']")
            okayBtn.click
          }
    }

end
