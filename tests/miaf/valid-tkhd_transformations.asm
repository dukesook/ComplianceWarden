%define BE(a) ( ((((a)>>24)&0xFF) << 0) + ((((a)>>16)&0xFF) << 8) + ((((a)>>8)&0xFF) << 16)  + ((((a)>>0)&0xFF) << 24))

ftyp_start:
dd BE(ftyp_end - ftyp_start)
db "ftyp"

db "isom"
dd BE(0x00)
db "mif1", "miaf", "isom"

ftyp_end:

meta_start:
dd BE(meta_end - meta_start)
db "meta"
dd BE(0)

hdlr_start:
dd BE(hdlr_end - hdlr_start)
db "hdlr"
db 0x00 ; version(8) 
db 0x00, 0x00, 0x00 ; flags(24) 
db 0x00, 0x00, 0x00, 0x00 ; pre_defined(32) 
db 0x70, 0x69, 0x63, 0x74 ; handler_type(32) ('pict') 
db 0x00, 0x00, 0x00, 0x00 ; reserved1(32) 
db 0x00, 0x00, 0x00, 0x00 ; reserved2(32) 
db 0x00, 0x00, 0x00, 0x00 ; reserved3(32) 
db 0x00 ; name(8) 
hdlr_end:

pitm_start:
dd BE(pitm_end - pitm_start)
db "pitm"
dd BE(0)
db 0x00, 0x01
pitm_end:

iinf_start:
    dd BE(iinf_end - iinf_start)
    dd "iinf"
    db 0x00 ; "version(8)" 
    db 0x00, 0x00, 0x00 ; "flags(24)" 
    db 0x00, 0x01 ; "entry_count(16)" 
    infe_start:
        dd BE(infe_end - infe_start)
        dd "infe"
        db 0x02 ; "version(8)" 
        db 0x00, 0x00, 0x00 ; "flags(24)" 
        db 0x00, 0x01 ; "item_ID(16)" 
        db 0x00, 0x00 ; "item_protection_index(16)" 
        db 0x61, 0x76, 0x30, 0x31 ; "item_type(32)" ('av01') 
        db 0x00 ; "item_name(8)" 
    infe_end:
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
dd 0, 0, 0
ispe_end:
pixi_start:
    dd BE(pixi_end - pixi_start)
    dd "pixi"
pixi_end:
ipco_end:
ipma_start:
    dd BE(ipma_end - ipma_start)
    dd "ipma"
    db 0x00 ; "version(8)" 
    db 0x00, 0x00, 0x00 ; "flags(24)" 
    db 0x00, 0x00, 0x00, 0x01 ; "entry_count(32)" 
    db 0x00, 0x01 ; "item_ID(16)" 
    db 0x02 ; "association_count(8)"  
    db 0x81 ; "essential(1)" "property_index(7)"
    db 0x82 ; "essential(1)" "property_index(7)"
ipma_end:
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
db 0x00 ; version(8) 
db 0x00, 0x00, 0x00 ; flags(24) 
db 0x00, 0x00, 0x00, 0x00 ; pre_defined(32) 
db 0x70, 0x69, 0x63, 0x74 ; handler_type(32) ('pict') 
db 0x00, 0x00, 0x00, 0x00 ; reserved1(32) 
db 0x00, 0x00, 0x00, 0x00 ; reserved2(32) 
db 0x00, 0x00, 0x00, 0x00 ; reserved3(32) 
db 0x00 ; name(8) 
hdlr2_end:
mdhd_start:
    dd BE(mdhd_end - mdhd_start)
    dd "mdhd"
mdhd_end:
minf_start:
    dd BE(minf_end - minf_start)
    dd "minf"
    vmhd_start:
        dd BE(vmhd_end - vmhd_start)
        dd "vmhd"
        db 0x00 ; (8) 
        db 0x00 ; (8) 
        db 0x00 ; (8) 
        db 0x01 ; (8) 
        db 0x00 ; (8) 
        db 0x00 ; (8) 
        db 0x00 ; (8) 
        db 0x00 ; (8) 
        db 0x00 ; (8) 
        db 0x00 ; (8) 
        db 0x00 ; (8) 
        db 0x00 ; (8) 
    vmhd_end:
    dinf_start:
        dd BE(dinf_end - dinf_start)
        dd "dinf"
        dref_start:
            dd BE(dref_end - dref_start)
            dd "dref"
            db 0x00 ; version(8) 
            db 0x00, 0x00, 0x00 ; flags(24) 
            db 0x00, 0x00, 0x00, 0x01 ; entry_count(32) 
            url_start:
                dd BE(url_end - url_start)
                dd "url "
                db 0x00 ; version(8) 
                db 0x00, 0x00, 0x01 ; flags(24) 
            url_end:
        dref_end:
    dinf_end:
    stbl_start:
        dd BE(stbl_end - stbl_start)
        dd "stbl"
        stsd_start:
            dd BE(stsd_end - stsd_start)
            dd "stsd"
            db 0x00 ; version(8) 
            db 0x00, 0x00, 0x00 ; flags(24) 
            db 0x00, 0x00, 0x00, 0x00 ; entry_count(32) 
        stsd_end:
        stts_start:
            dd BE(stts_end - stts_start)
            dd "stts"
            db 0x00 ; version(8) 
            db 0x00, 0x00, 0x00 ; flags(24) 
            db 0x00, 0x00, 0x00, 0x01 ; entry_count(32) 
            db 0x00, 0x00, 0x00, 0x01 ; sample_count(32) 
            db 0x00, 0x00, 0x00, 0x01 ; sample_delta(32) 
        stts_end:
        stsc_start:
            dd BE(stsc_end - stsc_start)
            dd "stsc"
            db 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00
            db 0x00, 0x00, 0x00, 0x00
        stsc_end:
        stsz_start:
            dd BE(stsz_end - stsz_start)
            dd "stsz"
            db 0x00, 0x00, 0x00, 0x01
            db 0x00, 0x00, 0x00, 0x01
        stsz_end:
        stco_start:
            dd BE(stco_end - stco_start)
            dd "stco"
            db 0x00 ; version(8) 
            db 0x00, 0x00, 0x00 ; flags(24) 
            db 0x00, 0x00, 0x00, 0x01 ; entry_count(32) 
            dd BE(mdat_start - ftyp_start + 8) ; chunk_offset(32) 
        stco_end:
    stbl_end:
minf_end:
mdia_end:
tkhd_start:
dd BE(tkhd_end - tkhd_start)
db "tkhd"
dd BE(0)
dd BE(0)
dd BE(0)
dd BE(0)
dd BE(0)
dd BE(0)
dd BE(0)
dd BE(0)
dd BE(0)
dd BE(0)

dd BE(0x00010000), BE(0x00010000), 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, BE(0x40000000)

dd BE(0) ; width
dd BE(0) ; height

tkhd_end:
trak_end:
moov_end:

mdat_start:
dd BE(mdat_end - mdat_start)
db "mdat"
db 0x00
mdat_end:
