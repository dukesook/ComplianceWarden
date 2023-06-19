%define BE(a) ( ((((a)>>24)&0xFF) << 0) + ((((a)>>16)&0xFF) << 8) + ((((a)>>8)&0xFF) << 16)  + ((((a)>>0)&0xFF) << 24))

ftyp_start:
    dd BE(ftyp_end - ftyp_start)
    dd "ftyp"
    db 0x69, 0x73, 0x6F, 0x6D ; major_brand(32) ('isom') 
    db 0x00, 0x00, 0x02, 0x00 ; minor_version(32) 
    db 0x69, 0x73, 0x6F, 0x6D ; compatible_brand(32) ('isom') 
    db 0x61, 0x76, 0x30, 0x31 ; compatible_brand(32) ('av01') 
    db 0x69, 0x73, 0x6F, 0x32 ; compatible_brand(32) ('iso2') 
    db 0x6D, 0x70, 0x34, 0x31 ; compatible_brand(32) ('mp41') 
ftyp_end:
free_start:
    dd BE(free_end - free_start)
    dd "free"
free_end:
mdat_start:
    dd BE(mdat_end - mdat_start)
    dd "mdat"
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
    db 0xD0, 0x91, 0x00, 0x94 ; enable_restoration(1) high_bitdepth(1) mono_chrome(1) color_description_present_flag(1) color_primaries(8) transfer_characteristics(8) matrix_coefficients(8) color_range(1) chroma_sample_position(2) separate_uv_delta_q(1) 
    db 0x40 ; film_grain_params_present(1) ('@') bits(7) ('@') 
     ; /seqhdr(0) 
     ; obu(0) 
    db 0x2A ; forbidden(1) ('*') obu_type(4) ('*') obu_extension_flag(1) ('*') obu_has_size_field(1) ('*') obu_reserved_1bit(1) ('*') 
    db 0x06 ; leb128_byte(8) 
    db 0x04 ; leb128_byte(8) 
    db 0xB5 ; itu_t_t35_country_code(8) 
    db 0x00, 0x3C ; itu_t_t35_terminal_provider_code(16) 
    db 0x00, 0x01 ; itu_t_t35_terminal_provider_oriented_code(16) 
     ; obu(0) 
    db 0x32 ; forbidden(1) ('2') obu_type(4) ('2') obu_extension_flag(1) ('2') obu_has_size_field(1) ('2') obu_reserved_1bit(1) ('2') 
    db 0x01 ; leb128_byte(8) 
    db 0x80 ; show_existing_frame(1) frame_to_show_map_idx(3) bits(4) 
mdat_end:

; vim: syntax=nasm
