#{{{ Marathon
require_fixture 'default'
#}}} Marathon

severity("normal")

def test

    with_window("Demo Programs") {
        doubleclick("list_0", "com.sun.swingset3.demos.dialog.DialogDemo")
    }

    with_window("Demo JDialog") {
        window_closed("Demo JDialog")
    }

    with_window("com.sun.swingset3.demos.dialog.DialogDemo") {
        click("Show JDialog...")
    }

    with_window("Demo JDialog") {
        window_closed("Demo JDialog")
    }

    with_window("com.sun.swingset3.demos.dialog.DialogDemo") {
        window_closed("com.sun.swingset3.demos.dialog.DialogDemo")
    }

end
