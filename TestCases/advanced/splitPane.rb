#{{{ Marathon
require_fixture 'default'
#}}} Marathon

severity("normal")

def test

    with_window("Demo Programs") {
        doubleclick("list_0", "com.sun.swingset3.demos.splitpane.SplitPaneDemo")
    }

    with_window("JSplitPane Demo") {
      # Change to vertical Split.
          verticalSplit = driver.find_element(:css , "radio-button[accessibleName = 'Vertical Split']")
          verticalSplit.click
          
      # CLick on continous layout.
          contLayout = driver.find_element(:css , "check-box[accessibleName = 'Continuous Layout']")
          contLayout.click
    }

end
