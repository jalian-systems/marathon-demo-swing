#{{{ Marathon
require_fixture 'default'
#}}} Marathon

severity("normal")

def test

    with_window("Demo Programs") {
        doubleclick("list_0", "com.sun.swingset3.demos.editorpane.EditorPaneDemo")
    }

    with_window("JEditorPane Demo") {
        click("html", "text=Title Page")
        assert_true(get_p('html', 'text').index("MICROGRAPHIA") != -1)
        click("html", "link=king.html")
        assert_true(get_p('html', 'text').index("Majesties Royal feet") != -1)
        click("html", "link=preface.html")
        assert_true(get_p('html', 'text').index("barely to sustein our lives by them") != -1)
    }

end
