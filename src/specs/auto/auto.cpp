#include "core/spec.h"

#include "core/fourcc.h"
#include <cstring>


static const SpecDesc specAuto = {
  "auto",
  "Automatically detect profiles",
  { }, // No dependencies
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
  nullptr
  };

static auto const registered = registerSpec(&specAuto);