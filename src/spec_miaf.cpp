#include "spec.h"

static const SpecDesc g_miafSpec =
{
  "MIAF",
  {
    {
      "This is a placeholder rule",
      [] (Box const &, IReport*)
      {
      }
    },
  },
};

static auto const registered = registerSpec(&g_miafSpec);

