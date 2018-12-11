#{{{ Marathon
require_fixture 'default'
#}}} Marathon

severity("normal")

def test

    with_window("Demo Programs") {
        doubleclick("list_0", "com.sun.swingset3.demos.gridbaglayout.GridBagLayoutDemo")
    }

    with_window("GridBagLayout Demo") {
        click("Backspace")
        click("7")
        click("8")
        click("5")
        click("/")
        click("5")
        click("=")
        assert_p("tfScreen", "Text", "157")
        click("*")
        click("1")
        click("5")
        click("7")
        click("=")
        assert_p("tfScreen", "Text", "24649")
        click("sqrt")
        assert_p("tfScreen", "Text", "157")
        window_closed("GridBagLayout Demo")
    }

end
