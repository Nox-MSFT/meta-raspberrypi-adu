# DRI3 note:
# With oe-core commit 8509e2e1a87578882b71948ccef3b50ccf1228b3 dri3 is set
# as default. To state out clearly that Raspi needs dri3 and to avoid surprises
# in case oe-core changes this default, we set dri3 explicitly.
PACKAGECONFIG:append:rpi = " gallium ${@bb.utils.contains('DISTRO_FEATURES', 'x11 opengl', 'x11 dri3', '', d)}"
GALLIUMDRIVERS:append:rpi = ",vc4,v3d,kmsro"
DRIDRIVERS:rpi = ""
