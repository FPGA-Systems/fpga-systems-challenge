set self_path [file dirname [file normalize [info script]]]

set dir_dcps     ${self_path}/dcps
set dir_projects ${self_path}/projects

file mkdir $dir_dcps
file mkdir $dir_projects

foreach fsc [glob -directory ${self_path}/src -type d *] {
    set name [file tail $fsc]
    if { [catch {create_project $name ${dir_projects}/${name}/$name -part xc7a35tcsg324-1} err] } {
        puts "|FSC::INFO| ==> Skip generate project for $name, since it already exists."
        continue
    }
    puts "|FSC::INFO| ==> Start generate project for $name."
    source ${fsc}/settings.tcl
    close_project
}
puts "\n\n"
puts "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
puts "= = = C A L L E N G E - F I L E S - H A S - B E E N - G E N E R A T E D = = ="
puts "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"