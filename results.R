library(ggplot2)
library(tidyr)
library(dplyr)
library(stringr)

#STABILITY-------------------------------------------------------------------
#Import data
gfp_st_df <- read.csv("./Data/gfp_data_stable.csv", header=T, sep= ";")

#count number cells of each population
gfp_st_df <- gfp_st_df %>%
  mutate(Strain1 = str_count(rawData_gfp,"100")) %>% #number cells Strain1
  mutate(Strain2 = n - Strain1)  #number cells Strain2


p_st <- gfp_st_df %>%
  select(time, Strain1, Strain2) %>%
  pivot_longer(!time, names_to = "Subpopulation", values_to = "Count") %>%
  ggplot( aes(x=time, y=Count, group=Subpopulation, color=Subpopulation)) +
  geom_line() +
  scale_color_manual(values=group.colors) +
  xlab("Time (min)") +
  ylab("Number of cells") +
  theme_bw() +
  theme(legend.position = c(0.87, 0.15))

ggsave("./Figures/nCells_chemostat_stable.png",p_st, width=6, height=4)

#STABILITY2------------------------------------------------------------------

#Import data
gfp_df <- read.csv("./Data/gfp_data.csv", header=T, sep= ";")

#count number cells of each population
gfp_df <- gfp_df %>%
  mutate(Strain1 = str_count(rawData_gfp,"100")) %>% #number cells Strain1
  mutate(Strain2 = n - Strain1)  #number cells Strain2

#plot the number of cells
  group.colors <- c(Strain1 = "#33FF66", Strain2 = "#33CCFF")

  
p <- gfp_df %>%
  select(time, Strain1, Strain2) %>%
  pivot_longer(!time, names_to = "Subpopulation", values_to = "Count") %>%
  ggplot( aes(x=time, y=Count, group=Subpopulation, color=Subpopulation)) +
  geom_line() +
  scale_color_manual(values=group.colors) +
  xlab("Time (min)") +
  ylab("Number of cells") +
  theme_bw() +
  theme(legend.position = c(0.87, 0.15))

ggsave("./Figures/nCells_chemostat.png",p, width=6, height=4)

#EXTINCTION-------------------------------------------------------------------
#Import data
gfp_ext_df <- read.csv("./Data/gfp_data_extinction.csv", header=T, sep= ";")

#count number cells of each population
gfp_ext_df <- gfp_ext_df %>%
  mutate(Strain1 = str_count(rawData_gfp,"100")) %>% #number cells Strain1
  mutate(Strain2 = n - Strain1)  #number cells Strain2


p_ext <- gfp_ext_df %>%
  select(time, Strain1, Strain2) %>%
  pivot_longer(!time, names_to = "Subpopulation", values_to = "Count") %>%
  ggplot( aes(x=time, y=Count, group=Subpopulation, color=Subpopulation)) +
  geom_line() +
  scale_color_manual(values=group.colors) +
  xlab("Time (min)") +
  ylab("Number of cells") +
  theme_bw() +
  theme(legend.position = c(0.87, 0.15))

ggsave("./Figures/nCells_chemostat_extinction.png",p_ext, width=6, height=4)

#DIFFERENT RATIO----------------------------------------------------------------
#Import data
gfp_dr_df <- read.csv("./Data/gfp_data_differentRatio.csv", header=T, sep= ";")

#count number cells of each population
gfp_dr_df <- gfp_dr_df %>%
  mutate(Strain1 = str_count(rawData_gfp,"100")) %>% #number cells Strain1
  mutate(Strain2 = n - Strain1)  #number cells Strain2


p_dr <- gfp_dr_df %>%
  select(time, Strain1, Strain2) %>%
  pivot_longer(!time, names_to = "Subpopulation", values_to = "Count") %>%
  ggplot( aes(x=time, y=Count, group=Subpopulation, color=Subpopulation)) +
  geom_line() +
  scale_color_manual(values=group.colors) +
  xlab("Time (min)") +
  ylab("Number of cells") +
  theme_bw() +
  theme(legend.position = c(0.12, 0.85))

ggsave("./Figures/nCells_chemostat_differentRatio.png",p_dr, width=6, height=4)