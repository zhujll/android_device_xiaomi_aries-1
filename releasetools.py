import common
import struct

def FullOTA_InstallBegin(info):
	info.script.AppendExtra('run_program("/sbin/syspart_select", "switch");');
