#{{{ Marathon
require_fixture 'default'
#}}} Marathon

severity("normal")

def test

    with_window("Demo Programs") {
        doubleclick("list_0", "com.sun.swingset3.demos.tree.TreeDemo")
    }

    with_window("JTree Demo") {
      # Get the root tree node.
        tree = driver.find_element(:css , "tree")
        treeRoot = tree.find_element(:css , ".::root")
        treeRoot.click
        assert_equals treeRoot.text , "Music"
      
      # Get all the other tree nodes and double click on the same.
      
        treeNode1 = tree.find_element(:css , ".::all-nodes[text = 'Classical']")
        driver.action.double_click(treeNode1).perform
        
        childNode1 = tree.find_element(:css , ".::all-nodes[text = 'Beethoven']")
        driver.action.double_click(childNode1).perform
        
        subChild1 = tree.find_element(:css , ".::all-nodes[text = 'concertos']")
        driver.action.double_click(subChild1).perform
        
        subChild2 = tree.find_element(:css , ".::all-nodes[text = 'No. 1 - C']")
        subChild2.click
    }

end
