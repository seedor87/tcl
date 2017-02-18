#!/usr/bin/tclsh

# dictionary creation
set my_dict [dict create entry1 "black" "entry2" "white" 1 "red" 0.25 "blue" entryX [split "me_myself_I_you" _]]


# a value from the dict
set value [dict get $my_dict entry1]
puts $value

set value [dict get $my_dict 1]
puts $value

set value [dict get $my_dict entryX]
puts $value


# all keys in dict
set keys [dict keys $my_dict]
puts $keys


# all values in dicts
set values [dict values $my_dict]
puts $values


# size
puts [dict size $my_dict]


# key exists
set result [dict exists $my_dict entryZ]
puts $result


# iteration
foreach key [dict keys $my_dict] {
	set var [dict get $my_dict $key]
	puts "$key\t\t$var"
}

exit 0