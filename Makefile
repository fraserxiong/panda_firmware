DFU_UTIL = "dfu-util"
PROJ_NAME = sdsu

recover:
	$(DFU_UTIL) -d 0483:df11 -a 0 -s 0x08004000 -D $(PROJ_NAME).bin
	$(DFU_UTIL) -d 0483:df11 -a 0 -s 0x08000000:leave -D bootstub.$(PROJ_NAME).bin
