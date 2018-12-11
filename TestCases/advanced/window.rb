#{{{ Marathon
require_fixture 'default'
#}}} Marathon

severity("normal")

def test

    with_window("Demo Programs") {
        doubleclick("list_0", "com.sun.swingset3.demos.window.WindowDemo")
    }

    with_window("com.sun.swingset3.demos.window.WindowDemo") {
      #Click on the show JWindow button
      
      windowComp = driver.find_element(:css , "button[accessibleName = 'Show JWindow...']")
      windowComp.click
      assert_equals windowComp , driver.find_element(:tag_name , 'button')
      window_closed("com.sun.swingset3.demos.window.WindowDemo")
    }

end
