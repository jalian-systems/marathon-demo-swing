#{{{ Marathon
require_fixture 'default'
#}}} Marathon

severity("normal")

def test

    with_window("Demo Programs") {
        doubleclick("list_0", "com.sun.swingset3.demos.filechooser.FileChooserDemo")
    }

    with_window("JFileChooser Demo") {
        click("Select image")
        select("embeddedChooser", "#M/lib/swingset3/swingset3.png")
        click("Select with preview")
        select("file-chooser_0", "#M/lib/swingset3/swingset3.png")
        window_closed("JFileChooser Demo")
    }

end
