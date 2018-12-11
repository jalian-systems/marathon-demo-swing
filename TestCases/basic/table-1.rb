#{{{ Marathon
require_fixture 'default'
#}}} Marathon

severity("normal")

def test

    with_window("Demo Programs") {
        doubleclick("list_0", "components.TableDemo")
    }

    with_window("TableDemo") {
        click("table_0", "{0, Vegetarian}")
        select("table_0", "true", "{0, Vegetarian}")
        doubleclick("table_0", "{4, Sport}")
        click("table_0", "{4, Sport}")
        select("table_0", "Swimming", "{4, Sport}")
        click("table_0", "{4, Sport}")
    }

end
