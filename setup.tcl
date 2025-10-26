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
    add_files {*}[glob -directory $fsc *.v]
    update_compile_order -fileset sources_1
    set_property STEPS.SYNTH_DESIGN.ARGS.FLATTEN_HIERARCHY none [get_runs synth_1]
    set_property STEPS.SYNTH_DESIGN.ARGS.NO_SRLEXTRACT true [get_runs synth_1]
    set_property -name {STEPS.SYNTH_DESIGN.ARGS.MORE OPTIONS} \
                 -value {-mode out_of_context} \
                 -objects [get_runs synth_1]
    launch_runs synth_1
    wait_on_run synth_1; # not wait_on_runS due 2021 have wait_on_run
    open_run synth_1 -name synth_1
    write_checkpoint ${self_path}/dcps/${name}.dcp
    close_project
}
puts "\n\n"
puts "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
puts "= = = C A L L E N G E - F I L E S - H A S - B E E N - G E N E R A T E D = = ="
puts "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"