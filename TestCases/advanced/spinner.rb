#{{{ Marathon
require_fixture 'default'
#}}} Marathon

severity("normal")

def test

    with_window("Demo Programs") {
        doubleclick("list_0", "com.sun.swingset3.demos.spinner.SpinnerDemo")
    }

    with_window("Spinner Demo") {
      # Change the value of the rsSpinner.
          rsSpinner = driver.find_element(:css,"spinner[fieldName = 'rsSpinner']")
          rsSpinnerValue = select(rsSpinner , "16")
          assert_equals "16" , rsSpinner.text
        
      # Change the value of iterSpinner.
          iterSpinner = driver.find_element(:css ,"spinner[fieldName = 'iterSpinner']")
          iterSpinnerValue = select(iterSpinner , "450")
          assert_equals "450" , iterSpinner.text
  
      #change the value of xSpinner.
          xSpinner = driver.find_element(:css , "spinner[fieldName = 'xSpinner']")
          xSpinnerValue = select(xSpinner , "-0.913")
          assert_equals "-0.913" , xSpinner.text
    }

end
