#{{{ Marathon
require_fixture 'default'
#}}} Marathon

severity("normal")

def test

    with_window("Demo Programs") {
        doubleclick("list_0", "com.sun.swingset3.demos.colorchooser.ColorChooserDemo")
    }

    with_window("JColorChooser Demo") {
        click("Background")

        with_window("Choose a Color") {
            # We can get the color chooser component using get_component
            chooserPane = get_component("chooserPane")
            
            # You can also use the normal webdriver calls
            assert_equals chooserPane, driver.find_element(:tag_name, 'color-chooser')
            
            # A select uses internally setColor. You can also use execute_script
            # if required
            select("chooserPane", "#ff3366")
            assert_equals '[r=255,g=51,b=102]', chooserPane['color']
            # like this
            driver.execute_script('$1.setColor(200,192,12);', chooserPane)
            assert_equals '[r=200,g=192,b=12]', chooserPane['color']
            
            click("OK")
        }

    }

end
