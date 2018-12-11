#{{{ Marathon
require_fixture 'default'
#}}} Marathon

severity("normal")

def test

    with_window("Demo Programs") {
        doubleclick("list_0", "com.sun.swingset3.demos.tabbedpane.TabbedPaneDemo")
    }

    with_window("JTabbedPane Demo") {
      # Selecting tab from the tabbedPane.
          tabbedPane = driver.find_element(:css , "tabbed-pane")
          tab = tabbedPane.find_element(:css , ".::nth-tab(2)")
          tab.click
          assert_equals "Miranda" , tab.text
          
      # Selecting the third tab from the tabbed Pane.
          thirdTab = tabbedPane.find_element(:css ,".::nth-tab(3)")
          thirdTab.click
          assert_equals "Ewan" , thirdTab.text
    }

end
