#-------------
#Overclock RaspBMC super profile:
#/boot/config.txt
#arm_freq=950
#core_freq=450
#isp_freq=450
#sdram_freq=450
#over_voltage=6
#disable_overscan=0
#remove the below?
#gpu_mem=128
#start_file=start_x.elf
#fixup_file=fixup_x.dat

#add codec licenses
# decode_MPG2=0x637f25f
# decode_WVC1=0x903bd43d

#add for TVs:
# disable_overscan=0

#memsplit management from OpenELEC allows GPU to request more memory
#sets memory for different versions of the Pi
# gpu_mem_256=128
# gpu_mem_512=256
#request at
# cma_lwm=16
#release at
# cma_hwm=32
#not sure what this does but is in OpenELEC
# cma_offline_start=16

#-------------------
#cmdline.txt
#for memsplit to work:
# coherent_pool=6M smsc95xx.turbo_mode=N