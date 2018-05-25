onerror {exit -code 1}
vlib work
vcom -work work sel_arbiter_nbit.vho
vcom -work work Waveform2.vwf.vht
vsim -novopt -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.sel_arbiter_nbit_vhd_vec_tst
vcd file -direction lab4_task4.msim.vcd
vcd add -internal sel_arbiter_nbit_vhd_vec_tst/*
vcd add -internal sel_arbiter_nbit_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
