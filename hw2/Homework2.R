
# Isabella Salonna
# HW 2

library(tidyverse)

# 1
library(tidyverse)
tribble( ~x, ~y, ~w, ~z,
         210, 300, 220, 180,
         102, 100, 119, 187,
         176, 175, 188, 173,
         87, 95, 91, 94,
         202, 210, 234, 218,
         110, 122, 131, 128,
) -> dt
dt

# 1a
map_dbl(dt, mean)
