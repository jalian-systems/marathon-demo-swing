#{{{ Marathon
require_fixture 'default'
#}}} Marathon

severity("normal")

def test

    with_window("Demo Programs") {
        doubleclick("list_0", "com.sun.swingset3.demos.internalframe.InternalFrameDemo")
    }

    with_window("JInternalFrame Demo") {
        with_frame("Internal Frame Generator:0") {
            click("Go Bananas")
            select("Iconifiable", "false")
            select("Iconifiable", "false")
            click("Soccer anyone?")
            select("Frame title", "Frame1")
        }
    }

end
