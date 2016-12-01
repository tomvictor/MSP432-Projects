# invoke SourceDir generated makefile for app_ble.pem3
app_ble.pem3: .libraries,app_ble.pem3
.libraries,app_ble.pem3: package/cfg/app_ble_pem3.xdl
	$(MAKE) -f C:\Users\Abhijith\Documents\workshop\ble\examples\cc2650lp\multi_role\ccs\config/src/makefile.libs

clean::
	$(MAKE) -f C:\Users\Abhijith\Documents\workshop\ble\examples\cc2650lp\multi_role\ccs\config/src/makefile.libs clean

