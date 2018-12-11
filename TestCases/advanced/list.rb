#{{{ Marathon
require_fixture 'default'
#}}} Marathon

severity("normal")

def test

    with_window("Demo Programs") {
        # get_component returns a webelement
        # you can get it using driver.find_element(:css, 'list') also
        el = get_component("list_0", "com.sun.swingset3.demos.list.ListDemo")
        driver.action.double_click(el).perform
    }

    with_window("JList Demo") {
        # You can get the list element by using the CSS.
        list = driver.find_element(:css, 'list')
        # Or
        # list = get_component('list')
        
        # Once you have the list you can get the elements either
        # by the text value
        metaDynamics = list.find_element(:css, ".::all-items[text='MetaDynamics']")
        # and click on it
        metaDynamics.click
        
        # You can get an element by its index
        metaDynamics = list.find_element(:css, ".::nth-item(2)")
        metaDynamics.click

        item1 = list.find_element(:css, ".::nth-item(2)")
        item2 = list.find_element(:css, ".::nth-item(5)")
        item3 = list.find_element(:css, ".::nth-item(7)")
        # Selecting multiple items can be done by using Command/Control click
        driver.action.click(item1).key_down(:command).click(item2).click(item3).key_up(:command).perform
        
        select_list_items_by_text list
    }

end

def select_list_items_by_text(list)
  # In most cases we work with `list` directly to perform operations that
  # could not have been done by 'click', 'select' marathon calls
  
  # In the following we get the list model and select all items that are
  # ending with 'Works'
  
  size = driver.execute_script("return Integer.valueOf($1.getModel().getSize());", list)
  return if !size
  actions = driver.action
  first = true
  for i in 0..size-1
    # Our model element is a String - just doing toString() is enough
    # In more complex model elements (that do not implement toString()) you
    # can use any method available in the model
    text = driver.execute_script("return $1.getModel().getElementAt(#{i}).toString();", list)
    next unless text =~ /Works/
    item = list.find_element :css, ".::nth-item(#{i+1})"
    if first
      first = false
      actions.click(item).key_down(:command)
    else
      actions.click(item)
    end
  end
  actions.perform
end
