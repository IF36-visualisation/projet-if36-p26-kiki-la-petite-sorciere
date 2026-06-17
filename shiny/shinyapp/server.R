#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

library(shiny)
library(readr)
library(dplyr)
library(tidyr)
library(tidyverse)
library(ggplot2)
library(magrittr)
library(stringr)


df2021 <- read_csv("../../data/3. Valorant Champion Tour 2021-2026 Data/vct_2021/matches/maps_scores.csv")
df2022 <- read_csv("../../data/3. Valorant Champion Tour 2021-2026 Data/vct_2022/matches/maps_scores.csv")
df2023 <- read_csv("../../data/3. Valorant Champion Tour 2021-2026 Data/vct_2023/matches/maps_scores.csv")
df2024 <- read_csv("../../data/3. Valorant Champion Tour 2021-2026 Data/vct_2024/matches/maps_scores.csv")
df2025 <- read_csv("../../data/3. Valorant Champion Tour 2021-2026 Data/vct_2025/matches/maps_scores.csv")
df2026 <- read_csv("../../data/3. Valorant Champion Tour 2021-2026 Data/vct_2026/matches/maps_scores.csv")
maps_scores <- bind_rows(
  df2021 %>% mutate(annee = 2021),
  df2022 %>% mutate(annee = 2022),
  df2023 %>% mutate(annee = 2023),
  df2024 %>% mutate(annee = 2024),
  df2025 %>% mutate(annee = 2025),
  df2026 %>% mutate(annee = 2026)
)

df2021 <- read_csv("../../data/3. Valorant Champion Tour 2021-2026 Data/vct_2021/matches/overview.csv")
df2022 <- read_csv("../../data/3. Valorant Champion Tour 2021-2026 Data/vct_2022/matches/overview.csv")
df2023 <- read_csv("../../data/3. Valorant Champion Tour 2021-2026 Data/vct_2023/matches/overview.csv")
df2024 <- read_csv("../../data/3. Valorant Champion Tour 2021-2026 Data/vct_2024/matches/overview.csv")
df2025 <- read_csv("../../data/3. Valorant Champion Tour 2021-2026 Data/vct_2025/matches/overview.csv")
df2026 <- read_csv("../../data/3. Valorant Champion Tour 2021-2026 Data/vct_2026/matches/overview.csv")
overview <- bind_rows(
  df2021 %>% mutate(annee = 2021),
  df2022 %>% mutate(annee = 2022),
  df2023 %>% mutate(annee = 2023),
  df2024 %>% mutate(annee = 2024),
  df2025 %>% mutate(annee = 2025),
  df2026 %>% mutate(annee = 2026)
)

overview <- overview %>% 
  filter(Side == "both") %>%
  select(-"Rating", -"Average Combat Score", -"Kills", -"Deaths", -"Assists", -"Kills - Deaths (KD)", -"Kill, Assist, Trade, Survive %", -"Average Damage Per Round", -"Headshot %", -"First Kills", -"First Deaths", -"Kills - Deaths (FKD)", -"Side")

players_score <- left_join(maps_scores, overview)
players_score <- players_score %>%
  mutate(
    Winner = if_else(
      (Team == `Team A` & `Team A Score` == 13) |
        (Team == `Team B` & `Team B Score` == 13),
      "Yes",
      "No"
    )
  ) %>% 
  select(-`Team A Score`, -`Team B Score`) %>%
  mutate(Match_ID = paste(Tournament, Stage, `Match Type`, `Match Name`, sep = " - ")) %>%
  select(-Tournament, -Stage, -`Match Type`, -`Match Name`)

comp_score <- players_score %>%
  group_by(Match_ID, Team, Map) %>%
  mutate(Agents = paste(Agents, collapse=", ")) %>%
  ungroup() %>%
  select(-Player) %>%
  distinct(Match_ID, Team, Map, .keep_all = TRUE) %>% 
  mutate(Agents = sapply(strsplit(Agents, ", "), function(x) {
    paste(sort(x), collapse = ", ")
  }))

comp_freq <- comp_score %>% select(Agents, Map, annee) %>% count(Agents, Map, annee, sort = TRUE) %>% group_by(Agents) %>% arrange(desc(n)) %>% head(15)

# Define server logic required to draw a histogram
server <- function(input, output, session) {
  agents_map <- reactive({
    comp_score %>%
      filter(Map == input$map,
             annee == input$year) %>%
      count(Agents, sort = TRUE) %>%
      slice_head(n = 15)
  })
  
  output$agents_plot <- renderPlot({
    
    ggplot(agents_map(),
           aes(x = reorder(Agents, n),
               y = n)) +
      geom_col(fill = rgb(0.17, 0.21, 0.35)) +
      coord_flip() +
      labs(
        title = paste("Compositions les plus jouées sur ", input$map),
        x = "Agent",
        y = "Nombre de sélections"
      ) +
      theme_minimal()
    
  })
}
