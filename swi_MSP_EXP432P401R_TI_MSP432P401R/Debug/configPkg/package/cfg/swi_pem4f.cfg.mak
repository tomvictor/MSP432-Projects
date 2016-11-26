# invoke SourceDir generated makefile for swi.pem4f
swi.pem4f: .libraries,swi.pem4f
.libraries,swi.pem4f: package/cfg/swi_pem4f.xdl
	$(MAKE) -f C:\Users\Abhijith\Documents\workshop\swi_MSP_EXP432P401R_TI_MSP432P401R/src/makefile.libs

clean::
	$(MAKE) -f C:\Users\Abhijith\Documents\workshop\swi_MSP_EXP432P401R_TI_MSP432P401R/src/makefile.libs clean

