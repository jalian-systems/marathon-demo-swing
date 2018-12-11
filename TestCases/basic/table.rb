#{{{ Marathon
require_fixture 'default'
#}}} Marathon

severity("normal")

def test

    with_window("Demo Programs") {
        doubleclick("list_0", "com.sun.swingset3.demos.table.TableDemo")
    }

    with_window("JTable Demo") {
        click("oscarTable", "{0, Award Category}")
        select("Show Only Winners", "true")
        select("filterField", "Sunrise")
        click("oscarTable", "{1, Award Category}")
    }

end
