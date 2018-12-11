#{{{ Marathon
require_fixture 'default'
#}}} Marathon

severity("normal")

def test

    with_window("Demo Programs") {
        doubleclick("list_0", "com.sun.swingset3.demos.editorpane.EditorPaneDemo")
    }

    with_window("JEditorPane Demo") {
      #Get the editor pane using find element.
        editorPane = driver.find_element :css, 'editor-pane'
        
      # find the tag name and click on its link.
        links = editorPane.find_elements :css, ".::tag('A')"
        titlePageLink = links.find { |link| link.text == 'Title Page'}
        titlePageLink.click
        
      # assert with the html index and find the href.
        assert_true(get_p('html', 'text').index("MICROGRAPHIA") != -1)
        kingPageLink = links.find { |link| link["href"] == 'king.html' }
        kingPageLink.click
        assert_true(get_p('html', 'text').index("Majesties Royal feet") != -1)
    }

end
