#{{{ Marathon
require_fixture 'default'
#}}} Marathon

severity("normal")

def test

    with_window("Demo Programs") {
        doubleclick("list_0", "com.sun.swingset3.demos.progressbar.ProgressBarDemo")
    }

    with_window("ProgressBar Demo") {
        click("Start Loading Text")
        click("Stop Loading Text")
        window_closed("ProgressBar Demo")
    }

end
