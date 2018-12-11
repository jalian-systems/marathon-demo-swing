#{{{ Marathon
require_fixture 'default'
#}}} Marathon

severity("normal")

def test

    with_window("Demo Programs") {
        click("list_0", "com.sun.swingset3.demos.optionpane.OptionPaneDemo")
        doubleclick("list_0", "com.sun.swingset3.demos.optionpane.OptionPaneDemo")
    }

    with_window("JOptionPane Demo") {
        click("Show Input Dialog")

        with_window("Input") {
            select("OptionPane.textField", "JSPL")
            click("OK")
        }

        with_window("Message") {
            click("OK")
        }
        
        
        click("Show Warning Dialog")

        with_window("Warning Dialog Example") {
            click("OK")
        }

        click("Show Message Dialog")

        with_window("Message") {
            click("OK")
        }

        click("Show Confirmation Dialog")

        with_window("Select an Option") {
            click("Yes")
        }

        with_window("Message") {
            click("OK")
        }
    }

end
