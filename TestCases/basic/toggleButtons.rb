#{{{ Marathon
require_fixture 'default'
#}}} Marathon

severity("normal")

def test

    with_window("Demo Programs") {
        doubleclick("list_0", "com.sun.swingset3.demos.togglebutton.ToggleButtonDemo")
    }

    with_window("ToggleButtons Demo") {
        select("Radio One", "true")
        select("Radio Two", "true")
        select("Paint Focus", "false")
    }

end
