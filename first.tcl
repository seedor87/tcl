if 0 {
   my first program in Tcl program
   Its very simple
}

puts "Hello\nWorld!"
set a [ expr 1 + 7]
puts $a

# example 2
set variableA "10"
set result [expr $variableA / 9];
puts $result
set result [expr $variableA / 9.0];
puts $result
set variableA "10.0"
set result [expr $variableA / 9];
puts $result

set variableA "10"
set tcl_precision 5
set result [expr $variableA / 9.0];
puts $result

# example 3
set a 10;
set b [expr $a == 1 ? 20: 30]
puts "Value of b is $b\n"
set b [expr $a == 10 ? 20: 30]
puts "Value of b is $b\n" 

# example switch
set grade D;

switch $grade  {
	A { puts "Well done!" }  
	B { puts "Excellent!" }  
	C { puts "You passed!"  } 
	D { puts "You get the D!"}
	F { puts "Better try again"   }   
	default { puts "Invalid grade"   }
}
puts "Your grade is  $grade"

# for loop execution
for { set a 10}  {$a < 20} {incr a} {
   puts "value of a: $a"
}

# array demo
set list(0) a
set list(1) b
set list(3) d

puts "associative array iterative style"
foreach index [array names list] {
   puts "list($index): $list($index)"
}

set list(2) ""

puts "indexed array style"
for { set index 0 }  { $index < [array size list] }  { incr index } {
   puts "list($index) : $list($index)"
}

# string work
set myvar "Hello\tWorld\n\nTutorialspoint"
puts $myvar
puts [string index $myvar end-1]

# palindrome checker
proc my_palindrome {myvar} {
	for {set index 0} {$index < [expr [string length $myvar] / 2]} {incr index} {
		set l [string index $myvar $index]
		set r [string index $myvar end-$index]
		if { $l == $r } {

		} else {
			return 0
		}
	}
	return 1
}

proc palindrome_s {s} {
    return [expr {$s eq [string reverse $s]}]
}

proc palindrome_r {s} {
    if {[string length $s] <= 1} {
        return true
    } elseif {[string index $s 0] ne [string index $s end]} {
        return false
    } else {
        return [palindrome_r [string range $s 1 end-1]]
    }
}

set p ingirumimusnocteetconsumimurigni
puts "'$p' is palindrome? [palindrome_s $p]"
puts "'$p' is palindrome? [palindrome_r $p]"
puts "'$p' is palindrome? [my_palindrome $p]"

exit 0





