#{{{ Marathon
require_fixture 'default'
#}}} Marathon

severity("normal")

def test

    with_window("Demo Programs") {
        doubleclick("list_0", "com.sun.swingset3.demos.colorchooser.ColorChooserDemo")
    }

    with_window("JColorChooser Demo") {
        click("Background")

        with_window("Choose a Color") {
            select("chooserPane", "#ff3366")
            click("OK")
        }

        assert_p("bezAnim", "Background.RGB", "-1118482")
    }

end
