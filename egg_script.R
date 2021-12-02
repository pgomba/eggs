library(tidyverse)

eggcolor <- read_csv("https://raw.githubusercontent.com/pgomba/eggs/main/data/eggcolor_csv")


ggplot(eggcolor,aes(x,y,fill=as.factor(egg_N)))+
  geom_point(shape = 21,size=10,colour="black",stroke=2)+
  scale_fill_manual(values = eggcolor$LAB2)+
  theme_classic()+
    theme(legend.position = "none")+
  theme(panel.background = element_rect(fill = "#b5bbc6"))+
  theme(plot.background = element_rect(fill = "#6c4f41"))+
  theme(axis.title = element_blank(),
        axis.text = element_blank())+
  geom_hline(yintercept=5.5)+
  geom_vline(xintercept=6.5)

