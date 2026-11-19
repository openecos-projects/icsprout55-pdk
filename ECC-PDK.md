# ICS55 v2 PDK description

`ecc-pdk.json` describes the ICS55 v2 (9T) release using schema version 2.
It records the process version, relative resource paths and checksums,
cell catalog, and library views. The ECC runtime manages tool adaptations.

Populate the release assets with `make unzip` before resolving the description.
The listed LEF, Liberty, GDS, and layer-map files must match their checksums.
The native technology LEF declares the threshold implant layers.

```sh
ecc pdk configure validate --root /path/to/ics55-v2
ecc pdk library import --root /path/to/ics55-v2
```
