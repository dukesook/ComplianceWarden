
#include "spec.h"

static const SpecDesc specAuto = {
  "auto",
  "Automatically Detect the correct spec based on ftyp box",
  { "isobmff" },
  {
    { "Section 10.2.1.1\n"
      "Files shall contain the brand 'mif1' in the compatible brands array of the\n"
      "FileTypeBox.\n"
      "/!\\ this rule doesn't look for 'mif1' brands rule-conformance:\n"
      "     if a brand is absent then its conformance rules won't be checked here /!\\",
      [](Box const &root, IReport *out) {
        if(root.children.empty() || root.children[0].fourcc != FOURCC("ftyp")) {
          out->error("'ftyp' box not found");
          return;
        }

        auto &ftypBox = root.children[0];

        bool found = false;

        for(auto &brand : ftypBox.syms)
          if(!strcmp(brand.name, "compatible_brand") && brand.value == FOURCC("mif1"))
            found = true;

        if(!found)
          out->error("'mif1' brand not found in 'ftyp' box");
      } },
  },
  isIsobmff,
};

static auto const registered = registerSpec(&specAuto);
