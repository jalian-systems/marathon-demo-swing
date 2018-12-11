#{{{ Marathon
require_fixture 'default'
#}}} Marathon

severity("normal")

def test

    with_window("Demo Programs") {
        doubleclick("list_0", "com.sun.swingset3.demos.tree.TreeDemo")
    }

    with_window("JTree Demo") {
        click("tree_0", "/Music/Classical")
        click("tree_0", "/Music/Classical/Beethoven")
        click("tree_0", "/Music/Classical/Beethoven/concertos")
        doubleclick("tree_0", "/Music/Classical/Beethoven/concertos/No. 1 - C")
    }

end
