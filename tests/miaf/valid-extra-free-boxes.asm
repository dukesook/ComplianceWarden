%define BE(a) ( ((((a)>>24)&0xFF) << 0) + ((((a)>>16)&0xFF) << 8) + ((((a)>>8)&0xFF) << 16)  + ((((a)>>0)&0xFF) << 24) )

ftyp_start:
dd BE(ftyp_end - ftyp_start)
db "ftyp"

db "isom"
dd BE(0x200)
db "mif1", "miaf"

ftyp_end:

;"FreeSpaceBox as defined in ISO/IEC 14496-12 may be present as permitted by that specification, including at top level"
free1_start:
dd BE(free1_end - free1_start)
db "free"
free1_end:

meta_start:
dd BE(meta_end - meta_start)
db "meta"
dd BE(0)

hdlr_start:
dd BE(hdlr_end - hdlr_start)
db "hdlr"
dd BE(0)
dd BE(0)
db "pict"
dd BE(0)
dd BE(0)
dd BE(0)
hdlr_end:

pitm_start:
dd BE(pitm_end - pitm_start)
db "pitm"
pitm_end:

iinf_start:
dd BE(iinf_end - iinf_start)
db "iinf"
dd BE(0)
iinf_end:

iprp_start:
dd BE(iprp_end - iprp_start)
db "iprp"
ipco_start:
dd BE(ipco_end - ipco_start)
db "ipco"
ispe_start:
dd BE(ispe_end - ispe_start)
db "ispe"
ispe_end:
ipco_end:
iprp_end:

;"FreeSpaceBox as defined in ISO/IEC 14496-12 may be present as permitted by that specification, including at top level"
free2_start:
dd BE(free2_end - free2_start)
db "free"
free2_end:

meta_end:

;"FreeSpaceBox as defined in ISO/IEC 14496-12 may be present as permitted by that specification, including at top level"
free3_start:
dd BE(free3_end - free3_start)
db "free"
free3_end:

; vim: syntax=nasm