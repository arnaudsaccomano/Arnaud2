install.packages("tidyverse")
library(tidyverse)
unicef_indicator_1_2_ <- read_csv("unicef_indicator_1 (2).csv")
unicef_metadata_1_ <- read_csv("unicef_metadata (1).csv")
data_join <- full_join(unicef_indicator_1_2_, unicef_metadata_1_)
data_join <- full_join(unicef_indicator_1_2_, unicef_metadata_1_, by = join_by(country, year)

data_join <- unicef_indicator_1_2_ %>%
  full_join(unicef_metadata_1_) %>%
                       
map_world <- map_data("world")                       
map_data_join <- full_join(data_join, map_world, by = c("country" = "region"))



ggplot(map_data_join) + 
   aes(x= long, y = lat, group, fill = GDP) +
   geom_polygon()



data_join <- unicef_indicator_1_2_ %>%
  full_join(unicef_metadata_1_) %>%
  