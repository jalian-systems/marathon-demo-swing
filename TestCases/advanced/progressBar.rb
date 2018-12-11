#{{{ Marathon
require_fixture 'default'
#}}} Marathon

severity("normal")

def test

    with_window("Demo Programs") {
        doubleclick("list_0", "com.sun.swingset3.demos.progressbar.ProgressBarDemo")
    }

    with_window("ProgressBar Demo") {
      # Start the progress bar.
          startBtn = driver.find_element(:css , "button[accessibleName = 'Start Loading Text']")
          startBtn.click
          assert_equals "Start Loading Text" , startBtn.text
      
      # Stop the progress Bar.
          stopBtn = driver.find_element(:css , "button[accessibleName = 'Stop Loading Text']")
          stopBtn.click
          assert_equals "Stop Loading Text" , stopBtn.text
    }

end
