import xmlrpclib
server = xmlrpclib.ServerProxy("http://jctan93nuc/RPC2")
print server.system.listMethods()

