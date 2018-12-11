#{{{ Marathon
require_fixture 'default'
#}}} Marathon

severity("normal")

def test

    with_window("Demo Programs") {
        doubleclick("list_0", "com.sun.swingset3.demos.button.ButtonDemo")
    }

    with_window("JButton Demo") {
        # Use driver.find_elements to find all buttons
        buttons = driver.find_elements(:css, 'button')
        # You can look for a button using the text on the button
        doitButton = buttons.find { |b| b.text == 'Do it' }
        # And then click on it
        doitButton.click
        # Or get some attributes
        doitTooltip = doitButton['toolTipText']
        # And assert...
        assert_equals "simple button", doitTooltip
        
        # You can also find the button using any property/attribute
        assert_equals doitButton, driver.find_element(:css, 'button[accessibleName="Do it again"]')
        
        # Do you want to check whether the button is enabled?
        assert_equals true, doitButton.enabled?
        
        # Though rare, you can use execute_script to operate on the button
        driver.execute_script "$1.setEnabled(false);", doitButton
        assert_equals false, doitButton.enabled?
        
        # Lets enable it again - if not click will fail!!
        driver.execute_script "$1.setEnabled(true);", doitButton
        assert_equals true, doitButton.enabled?
        
        # If we have used Component#setName, we can use the name to get the button
        driver.execute_script '$1.setName("doitButton");', doitButton
        assert_equals 'doitButton', doitButton['name']
        assert_equals doitButton, driver.find_element(:name, 'doitButton')
        
        # Incidentally, the Component#name is also used for By#id
        assert_equals doitButton, driver.find_element(:id, 'doitButton')
        
        # You can find element using their class. Note the fully qualified
        # class name. These can be user classes also.
        driver.find_elements(:class, "javax.swing.JButton")
    }

end
