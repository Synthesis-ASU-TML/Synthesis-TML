O4.net_ASU - Feb 2014

DEPENDENCIES:
CNMAT externals - http://cnmat.berkeley.edu/downloads
zeroconf library - included
oscjavaformax - included
Mira - http://cycling74.com/products/mira/

INSTRUCTIONS:
1. Download and Install latest version of Max/MSP (run in 32bit mode) + odot externals included in CNMAT library (http://cnmat.berkeley.edu/downloads)
2. make sure O4.net_ASU folder + dependencies are in your max search path

INCLUDED:
o4.net_send - publish osc stream to zero-configuration network
o4.net_recv - receive and funnel osc streams published by o4.net_send objects within the local network
o4.net_parse - funnel through osc data with ease
o4.net_lights - send dmx control over network to lighting control system
o4.mira.main - iPad control patch for o4 system

note: All data is passed through networking objects as odot, and can be converted back to max messages with the o.atomize object (see o4.net_odotExample.maxpat)