#! /usr/tcl84/bin/tclsh

# A simple means of using tcl to write web pages as cgi's


proc generate_page {dest} {
    puts $dest "Content-type: text/html\n"
    puts $dest "<HTML>"
    puts $dest "<HEAD>"
    puts $dest "<TITLE>Wave to the world! knolbak</TITLE>"
    puts $dest "</HEAD>"
    puts $dest "<BODY>"
    puts $dest "Hello, world!" 
    puts $dest "</BODY></HTML>"
}

set outfile [open "report.out" w]
if {[catch { generate_page $outfile } err]} {
    puts $dest "Content-type: text/plain\n\n$err"
}
close $outfile