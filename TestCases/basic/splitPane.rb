#{{{ Marathon
require_fixture 'default'
#}}} Marathon

severity("normal")

def test

    with_window("Demo Programs") {
        doubleclick("list_0", "com.sun.swingset3.demos.splitpane.SplitPaneDemo")
    }

    with_window("JSplitPane Demo") {
        select("Vertical Split", "true")
        select("Continuous Layout", "false")
    }

end
