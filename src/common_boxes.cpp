// Box-parsers for MP4 and MPEG-DASH
#include "common_boxes.h"

namespace
{
void parseRaw(IReader* br)
{
  while(!br->empty())
    br->sym("", 8);
}

void parseFtyp(IReader* br)
{
  br->sym("brand", 32);
  br->sym("version", 32);

  while(!br->empty())
    br->sym("compatible_brand", 32);
}

void parseMeta(IReader* br)
{
  br->sym("version", 8);
  br->sym("flags", 24);

  while(!br->empty())
    br->box();
}

void parseHdlr(IReader* br)
{
  br->sym("version", 8);
  br->sym("flags", 24);
  br->sym("pre_defined", 32);
  br->sym("handler_type", 32);
  br->sym("reserved1", 32);
  br->sym("reserved2", 32);
  br->sym("reserved3", 32);

  while(!br->empty())
    br->sym("", 8);
}

void parseMvhd(IReader* br)
{
  br->sym("version", 8);
  br->sym("flags", 24);
  br->sym("creation_time", 32);
  br->sym("modification_time", 32);
  br->sym("timescale", 32);
  br->sym("duration", 32);
}

void parseTrun(IReader* br)
{
  br->sym("version", 8);
  auto flags = br->sym("flags", 24);
  // 0x000001 data‐offset‐present
  // 0x000004 first‐sample‐flags‐present
  // 0x000100 sample‐duration‐present
  // 0x000200 sample‐size‐present
  // 0x000400 sample‐flags‐present
  // 0x000800 sample‐composition‐time‐offsets‐present
  auto const sample_count = br->sym("sample_count", 32);

  if(flags & 0x1)
    br->sym("data_offset", 32);

  if(flags & 0x4)
    br->sym("first_sample_flags", 32);

  for(int i = 0; i < sample_count; ++i)
  {
    if(flags & 0x100)
      br->sym("sample_duration", 32);

    if(flags & 0x200)
      br->sym("sample_size", 32);

    if(flags & 0x400)
      br->sym("sample_flags", 32);

    if(flags & 0x800)
      br->sym("sample_composition_time_offset", 32);
  }
}

void parseChildren(IReader* br)
{
  while(!br->empty())
    br->box();
}
}

ParseBoxFunc* getParseFunction(uint32_t fourcc)
{
  switch(fourcc)
  {
  case FOURCC("root"):
    return &parseChildren;
  case FOURCC("moov"):
  case FOURCC("trak"):
  case FOURCC("moof"):
  case FOURCC("traf"):
  case FOURCC("ilst"):
  case FOURCC("mvex"):
  case FOURCC("mdia"):
  case FOURCC("minf"):
  case FOURCC("stbl"):
  case FOURCC("dref"):
  case FOURCC(".too"):
    return &parseChildren;
  case FOURCC("ftyp"):
    return &parseFtyp;
  case FOURCC("meta"):
    return &parseMeta;
  case FOURCC("hdlr"):
    return &parseHdlr;
  case FOURCC("mdat"):
    return &parseRaw;
  case FOURCC("mvhd"):
    return &parseMvhd;
  case FOURCC("trun"):
    return &parseTrun;
  }

  return &parseRaw;
}

