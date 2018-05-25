onerror {exit -code 1}
vlib work
vcom -work work binary_encoder_4to2.vho
vcom -work work Waveform.vwf.vht
vsim -novopt -c -t 1ps -sdfmax binary_encoder_4to2_vhd_vec_tst/i1=binary_encoder_4to2_vhd.sdo -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.binary_encoder_4to2_vhd_vec_tst
vcd file -direction lab4_task1.msim.vcd
vcd add -internal binary_encoder_4to2_vhd_vec_tst/*
vcd add -internal binary_encoder_4to2_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
