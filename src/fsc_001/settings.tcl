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