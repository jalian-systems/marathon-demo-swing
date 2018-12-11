#{{{ Marathon
require_fixture 'default'
#}}} Marathon

severity("normal")

def test

    with_window("Demo Programs") {
        doubleclick("list_0", "com.sun.swingset3.demos.slider.SliderDemo")
    }

    with_window("Slider Demo") {
        select("Plain", "5")
        select("Major Ticks", "512")
    }
end
