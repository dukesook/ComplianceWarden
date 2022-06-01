%define BE(a) ( ((((a)>>24)&0xFF) << 0) + ((((a)>>16)&0xFF) << 8) + ((((a)>>8)&0xFF) << 16)  + ((((a)>>0)&0xFF) << 24))

_start:
     ; obu(0) 
    db 0x12 ; forbidden(1) obu_type(4) obu_extension_flag(1) obu_has_size_field(1) obu_reserved_1bit(1) 
    db 0x00 ; leb128_byte(8) 
     ; obu(0) 
    db 0x0A ; forbidden(1) obu_type(4) obu_extension_flag(1) obu_has_size_field(1) obu_reserved_1bit(1) 
    db 0x0F ; leb128_byte(8) 
     ; seqhdr(0) 
    db 0x00, 0x00, 0x00 ; seq_profile(3) still_picture(1) reduced_still_picture_header(1) timing_info_present_flag(1) initial_display_delay_present_flag(1) operating_points_cnt_minus_1(5) operating_point_idc[i])(12) 
    db 0x6A, 0xEF, 0xFF, 0xE1, 0xBD ; seq_level_idx[i](5) seq_tier[i](1) frame_width_bits_minus_1(4) frame_height_bits_minus_1(4) max_frame_width_minus_1(12) max_frame_height_minus_1(12) frame_id_numbers_present_flag(1) use_128x128_superblock(1) 
    db 0xFF ; enable_filter_intra(1) enable_intra_edge_filter(1) enable_interintra_compound(1) enable_masked_compound(1) enable_warped_motion(1) enable_dual_filter(1) enable_order_hint(1) enable_jnt_comp(1) 
    db 0xF9 ; enable_ref_frame_mvs(1) seq_choose_screen_content_tools(1) seq_choose_integer_mv(1) order_hint_bits_minus_1(3) enable_superres(1) enable_cdef(1) 
    db 0xF0, 0x91, 0x00, 0x9C ; enable_restoration(1) high_bitdepth(1) mono_chrome(1) color_description_present_flag(1) color_primaries(8) transfer_characteristics(8) matrix_coefficients(8) color_range(1) separate_uv_delta_q(0) film_grain_params_present(1) bits(2) 
     ; /seqhdr(0) 
    db 0x40 ; byte(8) ('@') 
     ; obu(0) 
    db 0x2A ; forbidden(1) ('*') obu_type(4) ('*') obu_extension_flag(1) ('*') obu_has_size_field(1) ('*') obu_reserved_1bit(1) ('*') 
    db 0x42 ; leb128_byte(8) ('B') 
    db 0x04 ; leb128_byte(8) 
    db 0xB5 ; itu_t_t35_country_code(8) 
    db 0x00, 0x3C ; itu_t_t35_terminal_provider_code(16) 
    db 0x00, 0x01 ; itu_t_t35_terminal_provider_oriented_code(16) 
    db 0x04 ; byte(8) 
    db 0x01 ; byte(8) 
    db 0x40 ; byte(8) ('@') 
    db 0x00 ; byte(8) 
    db 0x0F ; byte(8) 
    db 0xA1 ; byte(8) 
    db 0x5E ; byte(8) ('^') 
    db 0xA0 ; byte(8) 
    db 0x8A ; byte(8) 
    db 0x78 ; byte(8) ('x') 
    db 0x4E ; byte(8) ('N') 
    db 0x99 ; byte(8) 
    db 0x80 ; byte(8) 
    db 0x46 ; byte(8) ('F') 
    db 0xA4 ; byte(8) 
    db 0x08 ; byte(8) 
    db 0x00 ; byte(8) 
    db 0x00 ; byte(8) 
    db 0x29 ; byte(8) (')') 
    db 0xB4 ; byte(8) 
    db 0xC4 ; byte(8) 
    db 0x50 ; byte(8) ('P') 
    db 0x01 ; byte(8) 
    db 0x6C ; byte(8) ('l') 
    db 0xC8 ; byte(8) 
    db 0x00 ; byte(8) 
    db 0x01 ; byte(8) 
    db 0x90 ; byte(8) 
    db 0x03 ; byte(8) 
    db 0xCA ; byte(8) 
    db 0x58 ; byte(8) ('X') 
    db 0x06 ; byte(8) 
    db 0x36 ; byte(8) ('6') 
    db 0xD0 ; byte(8) 
    db 0x0B ; byte(8) 
    db 0x3E ; byte(8) ('>') 
    db 0xF8 ; byte(8) 
    db 0x0D ; byte(8) 
    db 0xFB ; byte(8) 
    db 0x19 ; byte(8) 
    db 0xA2 ; byte(8) 
    db 0xB0 ; byte(8) 
    db 0x00 ; byte(8) 
    db 0x40 ; byte(8) ('@') 
    db 0x2C ; byte(8) (',') 
    db 0x0F ; byte(8) 
    db 0xE5 ; byte(8) 
    db 0x8D ; byte(8) 
    db 0xB0 ; byte(8) 
    db 0x6F ; byte(8) ('o') 
    db 0xDC ; byte(8) 
    db 0xD3 ; byte(8) 
    db 0x64 ; byte(8) ('d') 
    db 0xE2 ; byte(8) 
    db 0xFA ; byte(8) 
    db 0x8E ; byte(8) 
    db 0xEB ; byte(8) 
    db 0xC0 ; byte(8) 
    db 0x00 ; byte(8) 
    db 0x80 ; byte(8) 
     ; obu(0) 
    db 0x32 ; forbidden(1) ('2') obu_type(4) ('2') obu_extension_flag(1) ('2') obu_has_size_field(1) ('2') obu_reserved_1bit(1) ('2') 
    db 0x85 ; leb128_byte(8) 
    db 0x03 ; leb128_byte(8) 
    db 0x10 ; show_existing_frame(1) frame_type(2) show_frame(1) bits(4) 
    db 0x00 ; byte(8) 
    db 0x86 ; byte(8) 
    db 0x40 ; byte(8) ('@') 
    db 0xC0 ; byte(8) 
    db 0x02 ; byte(8) 
    db 0x00 ; byte(8) 
    db 0x01 ; byte(8) 
    db 0x02 ; byte(8) 
    db 0xA0 ; byte(8) 
    db 0x01 ; byte(8) 
    db 0x00 ; byte(8) 
    db 0x0A ; byte(8) 
    db 0xA9 ; byte(8) 
    db 0x3E ; byte(8) ('>') 
    db 0x48 ; byte(8) ('H') 
    db 0xD0 ; byte(8) 
    db 0x9E ; byte(8) 
    db 0xF5 ; byte(8) 
    db 0x4F ; byte(8) ('O') 
    db 0x5E ; byte(8) ('^') 
    db 0x2E ; byte(8) ('.') 
    db 0xB0 ; byte(8) 
    db 0xE6 ; byte(8) 
    db 0x1A ; byte(8) 
    db 0xD5 ; byte(8) 
    db 0x5B ; byte(8) ('[') 
    db 0x09 ; byte(8) 
    db 0xC7 ; byte(8) 
    db 0xA7 ; byte(8) 
    db 0xB0 ; byte(8) 
    db 0xC3 ; byte(8) 
    db 0x24 ; byte(8) ('$') 
    db 0xB7 ; byte(8) 
    db 0x70 ; byte(8) ('p') 
    db 0x6C ; byte(8) ('l') 
    db 0x1D ; byte(8) 
    db 0x9C ; byte(8) 
    db 0xE7 ; byte(8) 
    db 0x17 ; byte(8) 
    db 0x2B ; byte(8) ('+') 
    db 0xBB ; byte(8) 
    db 0x89 ; byte(8) 
    db 0x1F ; byte(8) 
    db 0xE1 ; byte(8) 
    db 0xFD ; byte(8) 
    db 0x5D ; byte(8) (']') 
    db 0x7D ; byte(8) ('}') 
    db 0xA8 ; byte(8) 
    db 0x6E ; byte(8) ('n') 
    db 0x56 ; byte(8) ('V') 
    db 0x06 ; byte(8) 
    db 0x4E ; byte(8) ('N') 
    db 0x33 ; byte(8) ('3') 
    db 0x70 ; byte(8) ('p') 
    db 0x90 ; byte(8) 
    db 0x73 ; byte(8) ('s') 
    db 0xA0 ; byte(8) 
    db 0xC0 ; byte(8) 
    db 0x29 ; byte(8) (')') 
    db 0x1D ; byte(8) 
    db 0x51 ; byte(8) ('Q') 
    db 0x62 ; byte(8) ('b') 
    db 0xE4 ; byte(8) 
    db 0x72 ; byte(8) ('r') 
    db 0xBC ; byte(8) 
    db 0xA4 ; byte(8) 
    db 0xE9 ; byte(8) 
    db 0x21 ; byte(8) ('!') 
    db 0x68 ; byte(8) ('h') 
    db 0x53 ; byte(8) ('S') 
    db 0x93 ; byte(8) 
    db 0x30 ; byte(8) ('0') 
    db 0x39 ; byte(8) ('9') 
    db 0x69 ; byte(8) ('i') 
    db 0x92 ; byte(8) 
    db 0xA8 ; byte(8) 
    db 0xB6 ; byte(8) 
    db 0xD0 ; byte(8) 
    db 0x04 ; byte(8) 
    db 0x4E ; byte(8) ('N') 
    db 0x6D ; byte(8) ('m') 
    db 0x64 ; byte(8) ('d') 
    db 0x3F ; byte(8) ('?') 
    db 0x81 ; byte(8) 
    db 0xC2 ; byte(8) 
    db 0xF1 ; byte(8) 
    db 0x8F ; byte(8) 
    db 0x9D ; byte(8) 
    db 0x62 ; byte(8) ('b') 
    db 0xE5 ; byte(8) 
    db 0xF3 ; byte(8) 
    db 0xFF ; byte(8) 
    db 0xA8 ; byte(8) 
    db 0xA0 ; byte(8) 
    db 0x6B ; byte(8) ('k') 
    db 0xB0 ; byte(8) 
    db 0x3A ; byte(8) (':') 
    db 0x34 ; byte(8) ('4') 
    db 0xD2 ; byte(8) 
    db 0xEA ; byte(8) 
    db 0xDC ; byte(8) 
    db 0x4E ; byte(8) ('N') 
    db 0x33 ; byte(8) ('3') 
    db 0x21 ; byte(8) ('!') 
    db 0x1C ; byte(8) 
    db 0xAA ; byte(8) 
    db 0xB3 ; byte(8) 
    db 0x76 ; byte(8) ('v') 
    db 0x99 ; byte(8) 
    db 0xB7 ; byte(8) 
    db 0x9B ; byte(8) 
    db 0xD9 ; byte(8) 
    db 0xEC ; byte(8) 
    db 0xA5 ; byte(8) 
    db 0x50 ; byte(8) ('P') 
    db 0xF4 ; byte(8) 
    db 0xB4 ; byte(8) 
    db 0x77 ; byte(8) ('w') 
    db 0x4A ; byte(8) ('J') 
    db 0x3C ; byte(8) ('<') 
    db 0x21 ; byte(8) ('!') 
    db 0xD6 ; byte(8) 
    db 0x2A ; byte(8) ('*') 
    db 0x6B ; byte(8) ('k') 
    db 0xBE ; byte(8) 
    db 0x67 ; byte(8) ('g') 
    db 0xD5 ; byte(8) 
    db 0x20 ; byte(8) (' ') 
    db 0xD1 ; byte(8) 
    db 0x5D ; byte(8) (']') 
    db 0x94 ; byte(8) 
    db 0x45 ; byte(8) ('E') 
    db 0x88 ; byte(8) 
    db 0x43 ; byte(8) ('C') 
    db 0x19 ; byte(8) 
    db 0x85 ; byte(8) 
    db 0xF2 ; byte(8) 
    db 0xDD ; byte(8) 
    db 0x40 ; byte(8) ('@') 
    db 0x77 ; byte(8) ('w') 
    db 0x2A ; byte(8) ('*') 
    db 0x95 ; byte(8) 
    db 0xCA ; byte(8) 
    db 0x1F ; byte(8) 
    db 0x55 ; byte(8) ('U') 
    db 0x10 ; byte(8) 
    db 0x81 ; byte(8) 
    db 0x7F ; byte(8) 
    db 0x5D ; byte(8) (']') 
    db 0x50 ; byte(8) ('P') 
    db 0x57 ; byte(8) ('W') 
    db 0xF4 ; byte(8) 
    db 0x96 ; byte(8) 
    db 0x4F ; byte(8) ('O') 
    db 0xF2 ; byte(8) 
    db 0xB8 ; byte(8) 
    db 0x82 ; byte(8) 
    db 0xD8 ; byte(8) 
    db 0xF4 ; byte(8) 
    db 0x79 ; byte(8) ('y') 
    db 0x84 ; byte(8) 
    db 0x32 ; byte(8) ('2') 
    db 0x96 ; byte(8) 
    db 0x04 ; byte(8) 
    db 0x83 ; byte(8) 
    db 0x57 ; byte(8) ('W') 
    db 0x53 ; byte(8) ('S') 
    db 0xFC ; byte(8) 
    db 0xDB ; byte(8) 
    db 0xAA ; byte(8) 
    db 0x2C ; byte(8) (',') 
    db 0xE0 ; byte(8) 
    db 0xD0 ; byte(8) 
    db 0x23 ; byte(8) ('#') 
    db 0xB9 ; byte(8) 
    db 0x61 ; byte(8) ('a') 
    db 0xAB ; byte(8) 
    db 0x07 ; byte(8) 
    db 0xCE ; byte(8) 
    db 0x83 ; byte(8) 
    db 0x54 ; byte(8) ('T') 
    db 0x17 ; byte(8) 
    db 0xF9 ; byte(8) 
    db 0x1C ; byte(8) 
    db 0xDA ; byte(8) 
    db 0x98 ; byte(8) 
    db 0x4E ; byte(8) ('N') 
    db 0xEA ; byte(8) 
    db 0xD8 ; byte(8) 
    db 0x60 ; byte(8) ('`') 
    db 0xF3 ; byte(8) 
    db 0xB0 ; byte(8) 
    db 0x8F ; byte(8) 
    db 0xED ; byte(8) 
    db 0xB5 ; byte(8) 
    db 0xFA ; byte(8) 
    db 0xC3 ; byte(8) 
    db 0x5D ; byte(8) (']') 
    db 0x18 ; byte(8) 
    db 0x5D ; byte(8) (']') 
    db 0xD9 ; byte(8) 
    db 0xB6 ; byte(8) 
    db 0x5A ; byte(8) ('Z') 
    db 0x7D ; byte(8) ('}') 
    db 0xA1 ; byte(8) 
    db 0x9B ; byte(8) 
    db 0x31 ; byte(8) ('1') 
    db 0xE5 ; byte(8) 
    db 0x1D ; byte(8) 
    db 0xC7 ; byte(8) 
    db 0x58 ; byte(8) ('X') 
    db 0xAF ; byte(8) 
    db 0xB5 ; byte(8) 
    db 0x50 ; byte(8) ('P') 
    db 0x4A ; byte(8) ('J') 
    db 0xDE ; byte(8) 
    db 0x23 ; byte(8) ('#') 
    db 0xE7 ; byte(8) 
    db 0x76 ; byte(8) ('v') 
    db 0xE3 ; byte(8) 
    db 0xD7 ; byte(8) 
    db 0x7C ; byte(8) ('|') 
    db 0x2D ; byte(8) ('-') 
    db 0x3A ; byte(8) (':') 
    db 0x88 ; byte(8) 
    db 0x25 ; byte(8) ('%') 
    db 0xE9 ; byte(8) 
    db 0x4F ; byte(8) ('O') 
    db 0x1B ; byte(8) 
    db 0xA0 ; byte(8) 
    db 0x83 ; byte(8) 
    db 0x5A ; byte(8) ('Z') 
    db 0x42 ; byte(8) ('B') 
    db 0x90 ; byte(8) 
    db 0x76 ; byte(8) ('v') 
    db 0x8E ; byte(8) 
    db 0xE9 ; byte(8) 
    db 0x8B ; byte(8) 
    db 0x48 ; byte(8) ('H') 
    db 0x35 ; byte(8) ('5') 
    db 0x16 ; byte(8) 
    db 0x9A ; byte(8) 
    db 0xAD ; byte(8) 
    db 0x2C ; byte(8) (',') 
    db 0x76 ; byte(8) ('v') 
    db 0x1C ; byte(8) 
    db 0xD7 ; byte(8) 
    db 0xF7 ; byte(8) 
    db 0x25 ; byte(8) ('%') 
    db 0xB7 ; byte(8) 
    db 0xF0 ; byte(8) 
    db 0xAF ; byte(8) 
    db 0x40 ; byte(8) ('@') 
    db 0x41 ; byte(8) ('A') 
    db 0xA1 ; byte(8) 
    db 0xFA ; byte(8) 
    db 0x9C ; byte(8) 
    db 0x4E ; byte(8) ('N') 
    db 0x55 ; byte(8) ('U') 
    db 0x13 ; byte(8) 
    db 0x6B ; byte(8) ('k') 
    db 0x99 ; byte(8) 
    db 0x8A ; byte(8) 
    db 0xD5 ; byte(8) 
    db 0xFE ; byte(8) 
    db 0x18 ; byte(8) 
    db 0xA0 ; byte(8) 
    db 0x4E ; byte(8) ('N') 
    db 0xCA ; byte(8) 
    db 0x57 ; byte(8) ('W') 
    db 0x23 ; byte(8) ('#') 
    db 0xC1 ; byte(8) 
    db 0xA9 ; byte(8) 
    db 0x3C ; byte(8) ('<') 
    db 0x63 ; byte(8) ('c') 
    db 0x71 ; byte(8) ('q') 
    db 0xA3 ; byte(8) 
    db 0xDC ; byte(8) 
    db 0xBF ; byte(8) 
    db 0xE0 ; byte(8) 
    db 0x8D ; byte(8) 
    db 0xF7 ; byte(8) 
    db 0xB4 ; byte(8) 
    db 0xD8 ; byte(8) 
    db 0xEA ; byte(8) 
    db 0xCD ; byte(8) 
    db 0x4D ; byte(8) ('M') 
    db 0x9A ; byte(8) 
    db 0xE8 ; byte(8) 
    db 0xAD ; byte(8) 
    db 0x57 ; byte(8) ('W') 
    db 0x43 ; byte(8) ('C') 
    db 0xA8 ; byte(8) 
    db 0xFA ; byte(8) 
    db 0x57 ; byte(8) ('W') 
    db 0x9B ; byte(8) 
    db 0xF8 ; byte(8) 
    db 0xCF ; byte(8) 
    db 0xA3 ; byte(8) 
    db 0xA7 ; byte(8) 
    db 0xAA ; byte(8) 
    db 0xC1 ; byte(8) 
    db 0x49 ; byte(8) ('I') 
    db 0xDF ; byte(8) 
    db 0xF6 ; byte(8) 
    db 0xEF ; byte(8) 
    db 0x1D ; byte(8) 
    db 0x42 ; byte(8) ('B') 
    db 0x40 ; byte(8) ('@') 
    db 0x13 ; byte(8) 
    db 0x8C ; byte(8) 
    db 0x63 ; byte(8) ('c') 
    db 0xF7 ; byte(8) 
    db 0x9F ; byte(8) 
    db 0x4D ; byte(8) ('M') 
    db 0x7F ; byte(8) 
    db 0xB2 ; byte(8) 
    db 0xDD ; byte(8) 
    db 0xD7 ; byte(8) 
    db 0x28 ; byte(8) ('(') 
    db 0x46 ; byte(8) ('F') 
    db 0x8B ; byte(8) 
    db 0x7F ; byte(8) 
    db 0x08 ; byte(8) 
    db 0xC9 ; byte(8) 
    db 0x83 ; byte(8) 
    db 0x5C ; byte(8) ('\') 
    db 0xB1 ; byte(8) 
    db 0x6E ; byte(8) ('n') 
    db 0x24 ; byte(8) ('$') 
    db 0xFE ; byte(8) 
    db 0xFD ; byte(8) 
    db 0x33 ; byte(8) ('3') 
    db 0x3F ; byte(8) ('?') 
    db 0x12 ; byte(8) 
    db 0x04 ; byte(8) 
    db 0xAA ; byte(8) 
    db 0xCB ; byte(8) 
    db 0xF5 ; byte(8) 
    db 0xE2 ; byte(8) 
    db 0x45 ; byte(8) ('E') 
    db 0xB5 ; byte(8) 
    db 0xE9 ; byte(8) 
    db 0x0A ; byte(8) 
    db 0x4C ; byte(8) ('L') 
    db 0xDE ; byte(8) 
    db 0xFB ; byte(8) 
    db 0xF3 ; byte(8) 
    db 0xCE ; byte(8) 
    db 0x45 ; byte(8) ('E') 
    db 0xF4 ; byte(8) 
    db 0x22 ; byte(8) ('"') 
    db 0xDD ; byte(8) 
    db 0x5B ; byte(8) ('[') 
    db 0xD5 ; byte(8) 
    db 0x5F ; byte(8) ('_') 
    db 0x42 ; byte(8) ('B') 
    db 0xA6 ; byte(8) 
    db 0x6B ; byte(8) ('k') 
    db 0xE4 ; byte(8) 
    db 0x64 ; byte(8) ('d') 
    db 0xE2 ; byte(8) 
    db 0xA6 ; byte(8) 
    db 0xB5 ; byte(8) 
    db 0xFF ; byte(8) 
    db 0x7C ; byte(8) ('|') 
    db 0x34 ; byte(8) ('4') 
    db 0x65 ; byte(8) ('e') 
    db 0xBD ; byte(8) 
    db 0xFD ; byte(8) 
    db 0x07 ; byte(8) 
    db 0xA9 ; byte(8) 
    db 0x6D ; byte(8) ('m') 
    db 0x91 ; byte(8) 
    db 0x90 ; byte(8) 
    db 0xF9 ; byte(8) 
    db 0x0B ; byte(8) 
    db 0x3D ; byte(8) ('=') 
    db 0x64 ; byte(8) ('d') 
    db 0xC6 ; byte(8) 
    db 0x6E ; byte(8) ('n') 
    db 0xC4 ; byte(8) 
    db 0x39 ; byte(8) ('9') 
    db 0xA9 ; byte(8) 
    db 0x55 ; byte(8) ('U') 
    db 0xD2 ; byte(8) 
    db 0xF9 ; byte(8) 
    db 0xA0 ; byte(8) 
_end:

; vim: syntax=nasm
