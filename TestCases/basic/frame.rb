#{{{ Marathon
require_fixture 'default'
#}}} Marathon

severity("normal")

def test
    with_window("Demo Programs") {
        doubleclick("list_0", "com.sun.swingset3.demos.frame.FrameDemo")
    }

    with_window("Demo JFrame") {
        click("Toolbar Button")
        select_menu("File>>Save")
        select_menu("File>>Open")
        window_closed("Demo JFrame")
    }

    with_window("com.sun.swingset3.demos.frame.FrameDemo") {
        select("Frame busy", "true")
        select("Frame busy", "false")
    }

    with_window("com.sun.swingset3.demos.frame.FrameDemo") {
        click("Show JFrame...")
    }

end
