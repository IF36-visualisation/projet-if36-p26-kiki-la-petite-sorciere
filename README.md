# Fiche projet IF36 - Groupe Kiki la Petite Sorcière

## Datasets : 
### Valorant
- https://blitz.gg/valorant/stats/agents
- https://stackedit.io/app
- FAIT https://www.kaggle.com/datasets/evangower/valorant-esports-top-earnings
- https://www.kaggle.com/datasets/notnguyen/valorant-dataset-v3
- FAIT https://www.kaggle.com/datasets/mitchellharrison/my-first-1000-valorant-games
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

# Données
## Valorant
### 1. Valorant Esports Top Earnings

Les récompenses des joueurs professionnels de Valorant, entre 2020 et 2025.
Le dataset est divisé en 2 tableaux : un pour les équipes et un pour les joueurs

https://www.kaggle.com/datasets/evangower/valorant-esports-top-earnings

#### Joueurs

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
| Earnings | chaîne de caractères | Total de l'argent gagné en tournoi |

#### Équipes 

| Nom | Format | Description |
|------|------|---------|
| Rank | nombre | Rang de l'équipe en fonction des médailles qu'elle a gagné |
| Team | chaîne de caractères | Nom de l'équipe |
| Gold | nombre | Médaille d'or. Première place dans une compétition |
| Silver | nombre | Médaille d'argent. Deuxième place dans une compétition |
| Bronze | nombre | Médaille de bronze. Troisième place dans une compétition |
| S-Tier | nombre | Première place dans une compétition majeure internationale |
| Earnings | chaîne de caractères | Total de l'argent gagné en tournoi |

Nous avons choisi ce dataset pour observer les meilleurs joueurs et équipes professionnels. On ne peut pas voir l'évolution en fonction du temps, alors l'intérêt est surtout de pouvoir observer quels sont les joueurs et équipes dominants depuis la sortie du jeu. On pourra aussi comparer avec d'autres jeux de données plus complets pour étudier les statistiques d'un joueur ou d'une équipe précise.


### 2. My First 1000 Valorant Games

Les statistiques détaillées des 1000 premiers match compétitifs d'un nouveau joueur de Valorant.

https://www.kaggle.com/datasets/mitchellharrison/my-first-1000-valorant-games

4 variables (game_id, kdr, avg_dmg_delta, acs) 

15 observations (episode, act, rank, date, agent, map, outcome, round_wins, round_losses, kills, deaths, assists, headshot_pct, avg_dmg, num_frag)

| Nom | Format | Description |
|------|------|---------|
| game_id | nombre | Numéro de la partie (de la plus ancienne à la plus récente) |
| episode | chaîne de caractères | Fenêtre de temps (divisée en 3 actes) |
| act | chaîne de caractères | Fenêtre de temps de quelques mois (3 par épisode) |
| rank | nombre | Rang du joueur au début de la partie |
| date | date | La date à laquelle la partie est jouée |
| agent | chaîne de caractères | Le personnage joué |
| map | chaîne de caractères | La carte sur laquelle la partie est jouée |
| outcome | chaîne de caractères | Le résultat de la partie (défaite/victoire/égalité) |
| round_wins | nombre | Nombre de manches gagnées |
| round_losses | nombre | Nombre de manches perdues |
| kills | nombre | Nombre d'éliminations |
| deaths | nombre | Nombre de morts |
| assists | nombre | Nombre d'assistances |
| kdr | nombre | Ratio d'éliminations/morts |
| avg_dmg_delta | nombre | Différence de dégâts reçus et infligés en moyenne à chaque manche |
| headshot_pct | nombre | Pourcentage de tirs dans la tête touchés |
| avg_dmg | nombre | Moyenne des dégâts infligés aux ennemis par manche |
| acs | nombre | Moyenne du score de combat de chaque manche (calculé par le jeu) |
| num_frag | nombre | Rang interne à l'équipe en fonction du nombre d'éliminations (1 = plus d'éliminations, 5 = moins d'éliminations) |

Nous avons choisi ce dataset car il représente l'évolution d'un joueur représentatif du jeu. Les données sont très complètes, ce qui nous permettra d'étudier les comportements du joueur, sa stratégie, ainsi que les éléments les plus corrélés à une victoire.
