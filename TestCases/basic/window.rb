#{{{ Marathon
require_fixture 'default'
#}}} Marathon

severity("normal")

def test

    with_window("Demo Programs") {
        doubleclick("list_0", "com.sun.swingset3.demos.window.WindowDemo")
    }

    with_window("com.sun.swingset3.demos.window.WindowDemo") {
        click("Show JWindow...")
        window_closed("com.sun.swingset3.demos.window.WindowDemo")
    }

end
