#{{{ Marathon
require_fixture 'default'
#}}} Marathon

severity("normal")

def test

    with_window("Demo Programs") {
        doubleclick("list_0", "com.sun.swingset3.demos.combobox.ComboBoxDemo")
    }

    with_window("JComboBox Demo") {
        # You can use normal webdriver calls to get the combo box or use get_component
        combo = get_component('Presets')
        assert_equals combo, driver.find_element(:css, "combo-box[accessibleName='Presets:']")
        
        # You can access normal properties
        # itemCount and Content are marathon specific properties for combobox
        assert_equals '10', combo['itemCount']
        content = combo['content']
        
        # All attribute returns from webelement are strings. You can ofcourse convert
        # into a ruby array
        r_content = eval content
        # Because same API is used for JTable get_content the content is a 2D array.
        # The first row contains all the values
        assert_equals 10, r_content[0].length
        assert_equals "Philip, Howard, Jeff", r_content[0][0]
        assert_equals content, '[["Philip, Howard, Jeff","Jeff, Larry, Philip","Howard, Scott, Hans","Philip, Jeff, Hans","Brent, Jon, Scott","Lara, Larry, Lisa","James, Philip, Michael","Philip, Lisa, Brent","James, Philip, Jon","Lara, Jon, Scott"]]'
        
        # You can select an item from the combo box using the text using marathon select
        select("Presets", "Philip, Jeff, Hans")
        # Or use a filter on all-options
        option = combo.find_element :css, ".::all-options[text='Howard, Scott, Hans']"
        option.click
        assert_equals "Howard, Scott, Hans", combo.text
        
        # Use all-options to get all the options available
        options = combo.find_elements :css, '.::all-options'
        # And find a option may be using a regular expression
        option = options.find { |e| e.text =~ /Jon/ && e.text =~ /Brent/ }
        # and then select
        option.click
        assert_equals "Brent, Jon, Scott", combo.text
        
        # No text selection? You can select by index
        option = combo.find_element :css, '.::nth-option(2)'
        option.click
        assert_equals "Jeff, Larry, Philip", combo.text
        
    }

end
