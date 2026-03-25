# Fiche projet IF36 - Groupe Kiki la Petite Sorcière

## Datasets : 
### Valorant
- https://blitz.gg/valorant/stats/agents
- https://stackedit.io/app
- FAIT https://www.kaggle.com/datasets/evangower/valorant-esports-top-earnings
- FAIT https://www.kaggle.com/datasets/notnguyen/valorant-dataset-v3
- FAIT https://www.kaggle.com/datasets/mitchellharrison/my-first-1000-valorant-games
- https://www.reddit.com/r/ValorantCompetitive/comments/1odnm63/large_scale_valorant_dataset_20202024/
- https://www.vlr.gg/stats
- FAIT https://www.kaggle.com/datasets/ryanluong1/valorant-champion-tour-2021-2023-data?select=all_ids
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


### 3. Valorant Champion Tour 2021-2025 Data

- https://www.kaggle.com/datasets/ryanluong1/valorant-champion-tour-2021-2023-data

#### Métadonnées

Les métadonnées d'identification des tournois, stages, matchs et cartes joués dans le VCT de 2021 à 2025.

| Nom | Format | Description |
|-----|--------|-------------|
| Tournament ID | nombre | L'identifiant du tournoi |
| Stage ID | nombre | L'identifiant de la phase du tournoi |
| Match Type ID | nombre | L'identifiant du type de match |
| Match ID | nombre | L'identifiant du match |
| Game ID | nombre | L'identifiant de la carte jouée dans le match |
| Duration | durée (hh:mm:ss) | La durée du match en heures, minutes et secondes |

#### Map + Performance / Map

Les statistiques de performance des équipes et agents par carte.

| Nom | Format | Description |
|-----|--------|-------------|
| Pick Rate | nombre | Nombre de fois qu'un agent a été sélectionné |
| Total Maps Played | nombre | Nombre de fois qu'une carte a été jouée |
| Attacker Side Win Percentage | nombre (%) | Pourcentage de manches gagnées par le côté attaquant sur cette carte |
| Defender Side Win Percentage | nombre (%) | Pourcentage de manches gagnées par le côté défenseur sur cette carte |
| Total Wins By Map | nombre | Nombre de fois que l'équipe a gagné avec un agent donné sur cette carte |
| Total Loss By Map | nombre | Nombre de fois que l'équipe a perdu avec un agent donné sur cette carte |
| Total Maps Played (team) | nombre | Nombre total de fois que l'équipe a joué sur cette carte |
| Team Score | nombre | Score total accumulé par l'équipe dans un match |
| Team Attacker Score | nombre | Score accumulé par l'équipe en phase attaque |
| Team Defender Score | nombre | Score accumulé par l'équipe en phase défense |
| Team Overtime Score | nombre | Score accumulé par l'équipe en prolongation |

#### Économie

Les données d'économie par round, avec les dépenses et types d'achats des équipes.

| Nom | Format | Description |
|-----|--------|-------------|
| Loadout Value | nombre | Valeur totale de l'équipement acheté par tous les joueurs de l'équipe dans une manche |
| Remaining Credits | nombre | Crédits restants après les achats |
| Type | chaîne de caractères | Type économique de la manche (eco, semi-eco, semi-buy, full buy) |
| Pistol Round | booléen | L'équipe a remporté la manche au pistolet |
| Eco (won) | nombre | Manches gagnées en ayant dépensé 0–5k crédits |
| $ (Semi-eco) | nombre | Manches gagnées en ayant dépensé 5–10k crédits |
| $$ (Semi-buy) | nombre | Manches gagnées en ayant dépensé 10–20k crédits |
| $$$ (Full buy) | nombre | Manches gagnées en ayant dépensé plus de 20k crédits |
| Initiated | nombre | Nombre de fois que l'équipe a initié un type économique donné |
| Won | nombre | Nombre de fois que l'équipe a gagné avec un type économique donné |
| Econ | nombre | Évaluation économique du joueur (dégâts infligés pour 1000 crédits dépensés) |

#### Combat et éliminations

Les données détaillées des éliminations entre joueurs, incluant les clutches et multi-kills.

| Nom | Format | Description |
|-----|--------|-------------|
| Eliminator Team | chaîne de caractères | L'équipe du joueur ayant effectué l'élimination |
| Eliminator | chaîne de caractères | Le joueur ayant effectué l'élimination |
| Eliminator Agent | chaîne de caractères | L'agent joué par l'éliminateur |
| Eliminated Team | chaîne de caractères | L'équipe du joueur éliminé |
| Eliminated | chaîne de caractères | Le joueur éliminé |
| Eliminated Agent | chaîne de caractères | L'agent joué par le joueur éliminé |
| Kills | nombre | Nombre de fois qu'un joueur a éliminé un adversaire spécifique avec son agent |
| 2k | nombre | Nombre de doubles éliminations réalisées dans une manche |
| 3k | nombre | Nombre de triples éliminations réalisées dans une manche |
| 4k | nombre | Nombre de quadruples éliminations réalisées dans une manche |
| 5k | nombre | Nombre de quintuples éliminations réalisées dans une manche |
| 1v1 | nombre | Nombre de situations 1v1 remportées |
| 1v2 | nombre | Nombre de situations 1v2 remportées |
| 1v3 | nombre | Nombre de situations 1v3 remportées |
| 1v4 | nombre | Nombre de situations 1v4 remportées |

#### Performance des joueurs & statistiques personnelles

Les statistiques individuelles des joueurs professionnels sur l'ensemble des matchs du VCT.

| Nom | Format | Description |
|-----|--------|-------------|
| Rating (R) | nombre | Évaluation globale de la performance d'un joueur intégrant toutes les statistiques disponibles (voir https://www.vlr.gg/160667/vlr-gg-player-rating-explained) |
| Average Combat Score (ACS) | nombre | Score de combat moyen sur l'ensemble du match, calculé à partir des dégâts, éliminations, multi-kills et assists sans dégâts |
| Kills | nombre | Nombre d'éliminations dans un match |
| Deaths | nombre | Nombre de morts dans un match |
| Assists | nombre | Nombre d'assistances dans un match |
| Kills - Deaths (KD) | nombre | Différentiel éliminations/morts |
| KAST % | nombre (%) | Pourcentage de manches où le joueur a obtenu un kill, une assistance, survécu ou tradé un kill |
| Average Damage Per Round (ADR) | nombre | Dégâts moyens infligés par manche |
| Kills Per Round (KPR) | nombre | Moyenne d'éliminations par manche |
| Assists Per Round (APR) | nombre | Moyenne d'assistances par manche |
| First Kills Per Round (FKPR) | nombre | Moyenne de premiers kills par manche |
| First Deaths Per Round (FDPR) | nombre | Moyenne de premières morts par manche |
| Headshot % | nombre (%) | Pourcentage de tirs réussis dans la tête |
| Clutch Success % | nombre (%) | Pourcentage de clutches remportés |
| Clutches (won/played) | nombre | Ratio clutches gagnés / clutches joués |
| Maximum Kills in a Single Map | nombre | Nombre maximum d'éliminations réalisées sur une seule carte |
| First Kills | nombre | Nombre total de premiers kills réalisés |
| First Deaths | nombre | Nombre total de premières morts |
| Kills - Deaths (FKD) | nombre | Différentiel premiers kills / premières morts |
| Spike Plants | nombre | Nombre de fois que le joueur a planté la spike |
| Spike Defuse | nombre | Nombre de fois que le joueur a désamorcé la spike |

#### Victoire/défaite & méthodes (élim. / bombe)

Les méthodes de victoire et de défaite des équipes par manche (élimination, bombe, expiration du temps).

| Nom | Format | Description |
|-----|--------|-------------|
| Elimination | nombre | Nombre de manches gagnées en éliminant tous les ennemis |
| Detonated | nombre | Nombre de manches gagnées en faisant exploser la spike |
| Defuse | nombre | Nombre de manches gagnées en désamorçant la spike |
| Time Expiry (No Plant) | nombre | Nombre de manches gagnées car l'adversaire n'a pas planté à temps |
| Eliminated | nombre | Nombre de manches perdues suite à l'élimination de toute l'équipe |
| Defuse Failed | nombre | Nombre de manches perdues suite à un échec de désamorçage |
| Detonation Denied | nombre | Nombre de manches perdues car l'adversaire a désamorcé la spike |
| Time Expiry (Failed to Plant) | nombre | Nombre de manches perdues car l'équipe n'a pas planté à temps |

Nous avons choisi ce dataset car il contient des données complètes sur les tournois Valorant récents, et qu'il permet de les analyser dans ce contexte précis (avec les mêmes méthodes de collecte statistique et le même format).
L'intérêt de ce dataset est de pouvoir ensuite se pencher sur une évolution du jeu à travers les années (Pick/Ban), une comparaison statistique approfondie multi-critères, et une étude de corrélation pertinente sans devoir utiliser plusieurs datasets indépendants

### 4. Stats and Ranks of 2600 Valorant Players

Statistiques détaillées et rang de plus de 2600 joueurs de Valorant de tous niveaux. Toutes ces statistiques sont le total du compte du joueur depuis sa création.

- https://www.kaggle.com/datasets/notnguyen/valorant-dataset-v3

Ce dataset ne contient qu'une seule table:

| Nom | Format | Description |
|-----|--------|-------------|
| player | chaîne de caractères | Pseudo du joueur |
| assists | nombre | Nombre d'assists au total |
| damage_received | nombre | Quantité totale de dégâts reçue |
| headshots | nombre | Nombre de tirs portés à la tête d'autres joueurs |
| tier | chaîne de caractères | Rang en compétitif du joueur au moment de la création des données |
| traded | nombre | jsp |
| kills | nombre | Nombre de joueurs tués |
| matches | nombre | Nombre de matchs joués |
| deaths | nombre | Nombre de morts du joueur |
| damage | nombre | Quantité totale de dégâts portés à d'autres joueurs |

Ce dataset peut être très intéressant car nous avons une répartition de joueurs de tous niveaux. Il peut être utile pour s'intéresser à de possibles corrélations entre l'expérience d'un joueur et certaines statistiques. Aussi, il serait intéressant de voir si certains joueurs sortent exceptionnellement du lot sur certains points, comme un nombre de parties très réduit pour un rang élevé, ou à l'inverse de très grosses statistiques générales pour un rang médiocre.
