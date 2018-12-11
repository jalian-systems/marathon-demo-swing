#{{{ Marathon
require_fixture 'default'
#}}} Marathon

severity("normal")

def test

    with_window("Demo Programs") {
        doubleclick("list_0", "com.sun.swingset3.demos.tabbedpane.TabbedPaneDemo")
    }

    with_window("JTabbedPane Demo") {
       select("tabbedpane", "Miranda")
       select("tabbedpane", "Ewan")
    }

end
