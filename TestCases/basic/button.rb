#{{{ Marathon
require_fixture 'default'
#}}} Marathon

severity("normal")

def test

    with_window("Demo Programs") {
        doubleclick("list_0", "com.sun.swingset3.demos.button.ButtonDemo")
    }

    with_window("JButton Demo") {
        click("Do it")
        assert_p("Do it again", "Text", "Do it again")
        click("document-print")
        click("Find")
        click("Go")
        click("Connect")
        click("redbutton")
    }

end
