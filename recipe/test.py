import sys
import os
from PySide2 import QtCore

loader = QtCore.QPluginLoader()
loader.setFileName("libQAppImageUpdate")
loaded = loader.load()
print("plugin loaded: {}".format(loaded))
if not loaded:
	sys.exit(1)
