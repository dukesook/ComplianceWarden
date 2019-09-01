%define BE(a) ( ((((a)>>24)&0xFF) << 0) + ((((a)>>16)&0xFF) << 8) + ((((a)>>8)&0xFF) << 16)  + ((((a)>>0)&0xFF) << 24) )

ftyp_start:
dd BE(ftyp_end - ftyp_start)
db "ftyp"

db "isom"
dd BE(0x200)
db "mif1", "miaf"

ftyp_end:

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
dd BE(0)
db 0x00, 0x00
pitm_end:

iinf_start:
dd BE(iinf_end - iinf_start)
db "iinf"
dd BE(0)
db 0x00, 0x00
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

meta_end:

moov_start:
dd BE(moov_end - moov_start)
db "moov"
mvhd_start:
dd BE(mvhd_end - mvhd_start)
db "mvhd"
mvhd_end:
trak_start:
dd BE(trak_end - trak_start)
db "trak"

mdia_start:
dd BE(mdia_end - mdia_start)
db "mdia"
hdlr2_start:
dd BE(hdlr2_end - hdlr2_start)
db "hdlr"
dd BE(0)
dd BE(0)
dd "soun"
dd 0, 0, 0
hdlr2_end:

minf_start:
dd BE(minf_end - minf_start)
dd "minf"
stbl_start:
dd BE(stbl_end - stbl_start)
dd "stbl"

stsd_start:
dd BE(stsd_end - stsd_start)
dd "stsd"
db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x5A
db 0x74, 0x77, 0x6f, 0x73 ; 'twos'
db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0xAC, 0x44, 0x00, 0x00, 0x00, 0x00, 0x00, 0x36, 0x65, 0x73, 0x64, 0x73, 0x00, 0x00, 0x00, 0x00, 0x03, 0x80, 0x80, 0x80, 0x25, 0x00, 0x01, 0x00, 0x04, 0x80, 0x80, 0x80, 0x17, 0x40, 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC7, 0x85, 0x00, 0x00, 0xC7, 0x85, 0x05, 0x80, 0x80, 0x80, 0x05, 0x12, 0x08, 0x56, 0xE5, 0x00, 0x06, 0x80, 0x80, 0x80, 0x01, 0x02,
stsd_end:

stbl_end:
minf_end:

mdia_end:

elst_end:
edts_end:
trak_end:
moov_end:
