#{{{ Marathon
require_fixture 'default'
#}}} Marathon

severity("normal")

def test

    with_window("Demo Programs") {
        doubleclick("list_0", "com.sun.swingset3.demos.textfield.TextFieldDemo")
    }

    with_window("TextField Demo") {
        select("tfHistory", "cat")
        click("list_0", "cat")
        click("Go")
        select("tfPassword1", "yellow")
        select("tfPassword2", "yellow")
        click("Go")
    }

end
