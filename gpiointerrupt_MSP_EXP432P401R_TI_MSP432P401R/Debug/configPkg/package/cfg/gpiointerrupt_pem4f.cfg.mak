# invoke SourceDir generated makefile for gpiointerrupt.pem4f
gpiointerrupt.pem4f: .libraries,gpiointerrupt.pem4f
.libraries,gpiointerrupt.pem4f: package/cfg/gpiointerrupt_pem4f.xdl
	$(MAKE) -f C:\Users\Abhijith\Documents\workshop\gpiointerrupt_MSP_EXP432P401R_TI_MSP432P401R/src/makefile.libs

clean::
	$(MAKE) -f C:\Users\Abhijith\Documents\workshop\gpiointerrupt_MSP_EXP432P401R_TI_MSP432P401R/src/makefile.libs clean

