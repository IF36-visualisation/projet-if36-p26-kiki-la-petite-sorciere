# Fiche projet IF36 - Groupe Kiki la Petite Sorcière

## Datasets : 
### Valorant
- https://blitz.gg/valorant/stats/agents
- https://stackedit.io/app
- https://www.kaggle.com/datasets/evangower/valorant-esports-top-earnings
- https://www.kaggle.com/datasets/notnguyen/valorant-dataset-v3
- https://www.kaggle.com/datasets/mitchellharrison/my-first-1000-valorant-games
- https://www.reddit.com/r/ValorantCompetitive/comments/1odnm63/large_scale_valorant_dataset_20202024/
- https://www.vlr.gg/stats
- https://www.kaggle.com/datasets/ryanluong1/valorant-champion-tour-2021-2023-data?select=all_ids
### Overwatch (ne pas faire)
- https://www.kaggle.com/datasets/mykhailokachan/overwatch-2-statistics
- https://www.kaggle.com/datasets/stlze8/owcs-faceit-match-data-emea-and-na-2025
- https://www.kaggle.com/datasets/krpouncy/ow2-s10-ranked-leaderboard-snapshot-data

Plan d'analyse :
1. Comparer stats globales joueur normal / pro
2. Quels personnages sont les plus meurtriers
3. Quels joueurs pros ont la carrière la plus prolifique
4. Quels joueurs clutch le plus
5. Quelles cartes sont orientées attaque / défense
6. Qu'est-ce qui influe le plus la victoire dans une partie
7. Identifier les meilleures équipes
8. Meilleures équipes par années / changements de classement entre les années
9. First blood -> victoire ?
10. Aim / KDA influe sur le rang ?
11. Impact des parties précédentes sur l'actuelle
12. Meilleures équipes / persos en attaque / défense
13. Identifier les stratégies
14. Explication d'un ban (joueur ou carte)
15. Travail d'équipe (assists/kill)
16. Quels joueurs performent le mieux malgré une défaite ?
17. Nemesis (pire ennemi des joueurs)
18. Changement de joueurs -> gagner ?
19. Synergies entre joueurs
20. Joueurs les plus adaptables

# Visualisation des données
## Valorant
### 1. Valorant Esports Top Earnings

Les récompenses des joueurs professionnels de Valorant, entre 2020 et 2022.

https://www.kaggle.com/datasets/evangower/valorant-esports-top-earnings

1 variable (Rank) 

6 observations (Player, Gold, Silver, Bronze, S-Tier, Earnings)

| Nom | Format | Description |
|------|------|---------|
| Rank | nombre | Rang du joueur en fonction des médailles qu'il a gagné |
| Player | chaîne de caractères | Nom du joueur |
| Gold | nombre | Médaille d'or. Première place dans une compétition |
| Silver | nombre | Médaille d'argent. Deuxième place dans une compétition |
| Bronze | nombre | Médaille de bronze. Troisième place dans une compétition |
| S-Tier | nombre | Première place dans une compétition majeure internationale |
| Earnings | nombre | Total de l'argent gagné en tournoi |

Nous avons choisi ce dataset pour observer les meilleurs joueurs des premières années du jeu. Il sera surtout utile pour observer les changements par rapport avec un moment plus récent. On pourra voir si les meilleurs joueurs de 2022 sont les mêmes que les meilleurs joueurs de 2026, et si les récompenses des tournois ont augmenté drastiquement ou juste un peu.
