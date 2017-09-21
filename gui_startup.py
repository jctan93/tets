import os
import sys
import time
import platform
from tempfile import mkstemp
from shutil import move
from os import remove, close

def replace(file_path, pattern, subst):
    #Create temp file
    fh, abs_path = mkstemp()
    with open(abs_path,'w') as new_file:
        with open(file_path) as old_file:
            for line in old_file:
                new_file.write(line.replace(pattern, subst))
    close(fh)
    #Remove original file
    remove(file_path)
    #Move new file
    move(abs_path, file_path)


plat_name = platform.platform()
plat_hostname = platform.node()
release_ver = platform.version()
print "Print SUT & Image Info "
print "=================================="
print "Machine Name: " + plat_hostname
print "Platform Name: " + plat_name
print "Release Version: " + release_ver
print "==================================\n\n"
print "=================================="
print "Execute Graphical User Interface Startup Test"
#replace("/home/root/.xinitrc", "exec xterm", "#exec xterm")
#replace("/home/root/.xinitrc", "#exec matchbox-session", "exec matchbox-session")
os.system("echo \"exec matchbox-session\" > /home/root/.xinitrc")
os.system("startx &")
os.system("export DISPLAY=:0")
os.system("glxinfo | grep -i OpenGL >> /opengl.log")
time.sleep(30)
verdict = os.system("ps -e | grep matchbox")
if verdict == 0:
    test = "PASS"
    print "Test Result:" + test
    print "==================================\n\n"
    os.system("killall X")
    time.sleep(30)
    sys.exit(0)
else: 
    test = "FAIL"   
    print "Test Result:" + test
    print "==================================\n\n"
    os.system("killall X")
    time.sleep(30)
    sys.exit(1) 

