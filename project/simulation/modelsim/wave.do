view wave 
wave clipboard store
wave create -pattern none -portmode input -language vlog -range 31 0 /shifter/in 
wave create -pattern none -portmode output -language vlog -range 31 0 /shifter/out 
wave create -pattern none -portmode input -language vlog -range 2 0 /shifter/sh 
WaveCollapseAll -1
wave clipboard restore
