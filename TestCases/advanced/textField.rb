#{{{ Marathon
require_fixture 'default'
#}}} Marathon

severity("normal")

def test

    with_window("Demo Programs") {
        doubleclick("list_0", "com.sun.swingset3.demos.textfield.TextFieldDemo")
    }

    with_window("TextField Demo") {
      # Enter a text in the text field.
          textField = driver.find_element(:css , "text-field")
          textField.clear
          textField.send_keys("cat")
          assert_equals "cat" , textField.text
      
      #Click on the Go button.
          goButton = driver.find_element(:css , "button[accessibleName = 'Go']")
          goButton.click
     
      # Enter text in the password fields and check if the entered text matches.
         passwordField1 = driver.find_element(:css , "password-field[indexOfType = '0']")
         passwordField1.clear
         passwordField1.send_keys("yellow")
         passwordField2 = driver.find_element(:css , "password-field[indexOfType = '1']")
         passwordField2.clear
         passwordField2.send_keys("yellow")
         assert_equals passwordField1.text , passwordField2.text
    }

end
