#{{{ Marathon
require_fixture 'default'
#}}} Marathon

severity("normal")

def test

    with_window("Demo Programs") {
        doubleclick("list_0", "com.sun.swingset3.demos.combobox.ComboBoxDemo")
    }

    with_window("JComboBox Demo") {
        assert_p('Presets', 'itemCount', '10')
        assert_p('Presets', 'content', '[["Philip, Howard, Jeff","Jeff, Larry, Philip","Howard, Scott, Hans","Philip, Jeff, Hans","Brent, Jon, Scott","Lara, Larry, Lisa","James, Philip, Michael","Philip, Lisa, Brent","James, Philip, Jon","Lara, Jon, Scott"]]')
        select("Presets", "Philip, Jeff, Hans")
        assert_p("Hair", "Text", "Philip")
        assert_p("Eyes & Nose", "Text", "Jeff")
        assert_p("Mouth", "Text", "Hans")
        select("Presets", "Philip, Jeff, Hans")
    }

end
