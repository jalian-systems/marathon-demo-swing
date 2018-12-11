#{{{ Marathon
require_fixture 'default'
#}}} Marathon

severity("normal")

def test

    with_window("Demo Programs") {
        doubleclick("list_0", "com.sun.swingset3.demos.gridbaglayout.GridBagLayoutDemo")
    }

    with_window("GridBagLayout Demo") {
        # Since this window has a lot of buttons we get all
        # the buttons into an array and use them instead
        buttons = defineButtonsWithText();
        buttons["Backspace"].click
        buttons["7"].click
        buttons["8"].click
        buttons["5"].click
        buttons["/"].click
        buttons["5"].click
        buttons["="].click
        assert_p("tfScreen", "Text", "157")
        buttons["*"].click
        buttons["1"].click
        buttons["5"].click
        buttons["7"].click
        buttons["="].click
        assert_p("tfScreen", "Text", "24649")
        buttons["sqrt"].click
        assert_p("tfScreen", "Text", "157")
        window_closed("GridBagLayout Demo")
    }

end

def defineButtonsWithText()
  buttons = {}
  driver.find_elements(:css, 'button').each { |b|
    buttons[b.text] = b
  }
  return buttons
end
