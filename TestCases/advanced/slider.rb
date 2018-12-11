#{{{ Marathon
require_fixture 'default'
#}}} Marathon

severity("normal")

def test

    with_window("Demo Programs") {
        doubleclick("list_0", "com.sun.swingset3.demos.slider.SliderDemo")
    }

    with_window("Slider Demo") {
      # slide and change the value of plain.
          plainSlider = driver.find_element(:css , "slider[accessibleName = 'Plain']")
          plainSliderSelect = select(plainSlider ,"5")
      
      # slide and change the value of Major ticks.
        majorTicksSlider = driver.find_element(:css , "slider[accessibleName = 'Major Ticks']")
        majorTicksSliderSelect = select(majorTicksSlider ,"512")  
    }
end
