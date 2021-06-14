# ev21g1
EV21G1 Processor design and implementation in FPGA using Quartus Prime Lite

## Project File Structure
**ev21g1/** : Top level directory of the Quartus Prime project
* **bdf/** : Block diagram or schematic files (.bdf)
* **hdl/** : Verilog HDL files (.v)
  *  **generated/** : Verilog files generated by Quartus Prime from a block diagram or schematic file
* **simulation/** : Simulation waveform files for the Simulation Waveform Editor of Quartus Prime (.vwf) 
* **symbols/** : Generated symbol files (.bsf)
* **tests/** : Verilog HDL testing or testbench files (.v)
* **waves/** : Waveforms for ModelSim Altera (.do)
* **samples/** : ROM program samples for EV21G1
* **tools/** : Tools for developing with the EV21G1
* *ev21g1.bdf* : Top level block diagram or schematic
* *ev21g1.qpf* : Quartus Prime project file
* *ev21g1.qps* : Quartus Prime settings file
