#{{{ Marathon
require_fixture 'default'
#}}} Marathon

severity("normal")

def test

    with_window("Demo Programs") {
        doubleclick("list_0", "com.sun.swingset3.demos.table.TableDemo")
    }

    with_window("JTable Demo") {
     # Get the table and click on the row.
       table = driver.find_element(:css , "table[fieldName = 'oscarTable']")
       tableRow = table.find_element(:css , ".::mnth-cell(1,2)")
       tableRow.click
       assert_equals "0" , table.attribute("selectedRow")
      
    # Select the check box to show only winners.
      showWinners = driver.find_element(:css , "check-box[accessibleName = 'Show Only Winners']")
      showWinners.click
      assert_equals true , showWinners.selected?
      
    # Use the filter field and search for a keyword.
      filterField = driver.find_element(:css , "text-field")
      filterField.clear
      filterField.send_keys("Sunrise")
      assert_equals "Sunrise" , filterField.text
      
    # Select the row with the filter field text in it.
      row = table.find_element(:css , ".::mnth-cell(2,2)")
      row.click
      assert_equals "1" , table.attribute("selectedRow")
    }

end
