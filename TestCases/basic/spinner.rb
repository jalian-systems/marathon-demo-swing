#{{{ Marathon
require_fixture 'default'
#}}} Marathon

severity("normal")

def test

    with_window("Demo Programs") {
        doubleclick("list_0", "com.sun.swingset3.demos.spinner.SpinnerDemo")
    }

    with_window("Spinner Demo") {
        select("rsSpinner", "16")
        select("gsSpinner", "1")
        select("bsSpinner", "11")
        select("iterSpinner", "450")
        select("xSpinner", "-0.913")
        select("ySpinner", "0.553")
    }

end
