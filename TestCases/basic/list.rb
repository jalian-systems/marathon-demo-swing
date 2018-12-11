#{{{ Marathon
require_fixture 'default'
#}}} Marathon

severity("normal")

def test

    with_window("Demo Programs") {
        click("list_0", "com.sun.swingset3.demos.list.ListDemo")
        doubleclick("list_0", "com.sun.swingset3.demos.list.ListDemo")
    }

    with_window("JList Demo") {
        click("list", "MetaDynamics")
        click("list", "TeraSystems")
        click("list", "CompuWorks")
        select("list", "[CompuTelecom, TeraSystems, CompuWorks]")
        select("Digi", "true")
        select("Devices", "true")
    }

end
