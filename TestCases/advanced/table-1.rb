#{{{ Marathon
require_fixture 'default'
#}}} Marathon

severity("normal")

def test

    with_window("Demo Programs") {
        doubleclick("list_0", "components.TableDemo")
    }

    with_window("TableDemo") {
      # Use get_component to find the table
        tableSelect = get_component("table_0")
        assert_equals tableSelect , driver.find_element(:tag_name , 'table')
        
      # Find the row and column using mnth cell and click on it.
        clickRow = tableSelect.find_element(:css , ".::mnth-cell(1,5)")
        clickRow.click
        assert_equals "4" , tableSelect.attribute("selectedColumn")
        
      # find the row and column and edit the text in it.
        editRow = driver.find_element(:css , "table::mnth-cell(5,3)::editor")
        editRow.clear
        editRow.send_keys("Swimming")
        assert_equals "Swimming" , editRow.text
    }

end
