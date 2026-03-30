# Fiche projet IF36 - Groupe Kiki la Petite Sorcière


## Données
### 1. Valorant Esports Top Earnings

Les récompenses des joueurs professionnels de Valorant, entre 2020 et 2025.
Le dataset est divisé en 2 tableaux : un pour les équipes et un pour les joueurs

https://www.kaggle.com/datasets/evangower/valorant-esports-top-earnings

#### Joueurs

1 variable (Rank) 

6 observations (Player, Gold, Silver, Bronze, S-Tier, Earnings)

| Nom | Format | Description |
|------|------|---------|
| Rank | nombre entier | Rang du joueur en fonction des médailles qu'il a gagné |
| Player | chaîne de caractères | Nom du joueur |
| Gold | nombre entier | Médaille d'or. Première place dans une compétition |
| Silver | nombre entier | Médaille d'argent. Deuxième place dans une compétition |
| Bronze | nombre entier | Médaille de bronze. Troisième place dans une compétition |
| S-Tier | nombre entier | Première place dans une compétition majeure internationale |
| Earnings | chaîne de caractères | Total de l'argent gagné en tournoi |

#### Équipes 

| Nom | Format | Description |
|------|------|---------|
| Rank | nombre entier | Rang de l'équipe en fonction des médailles qu'elle a gagné |
| Team | chaîne de caractères | Nom de l'équipe |
| Gold | nombre entier | Médaille d'or. Première place dans une compétition |
| Silver | nombre entier | Médaille d'argent. Deuxième place dans une compétition |
| Bronze | nombre entier | Médaille de bronze. Troisième place dans une compétition |
| S-Tier | nombre entier | Première place dans une compétition majeure internationale |
| Earnings | chaîne de caractères | Total de l'argent gagné en tournoi |

Nous avons choisi ce dataset pour observer les meilleurs joueurs et équipes professionnels. On ne peut pas voir l'évolution en fonction du temps, alors l'intérêt est surtout de pouvoir observer quels sont les joueurs et équipes dominants depuis la sortie du jeu. On pourra aussi comparer avec d'autres jeux de données plus complets pour étudier les statistiques d'un joueur ou d'une équipe précise.


### 2. My First 1000 Valorant Games

Les statistiques détaillées des 1000 premiers match compétitifs d'un nouveau joueur de Valorant.

https://www.kaggle.com/datasets/mitchellharrison/my-first-1000-valorant-games

4 variables (game_id, kdr, avg_dmg_delta, acs) 

15 observations (episode, act, rank, date, agent, map, outcome, round_wins, round_losses, kills, deaths, assists, headshot_pct, avg_dmg, num_frag)

| Nom | Format | Description |
|------|------|---------|
| game_id | nombre entier | Numéro de la partie (de la plus ancienne à la plus récente) |
| episode | chaîne de caractères | Fenêtre de temps (divisée en 3 actes) |
| act | chaîne de caractères | Fenêtre de temps de quelques mois (3 par épisode) |
| rank | nombre entier | Rang du joueur au début de la partie |
| date | date | La date à laquelle la partie est jouée |
| agent | chaîne de caractères | Le personnage joué |
| map | chaîne de caractères | La carte sur laquelle la partie est jouée |
| outcome | chaîne de caractères | Le résultat de la partie (défaite/victoire/égalité) |
| round_wins | nombre entier | Nombre de manches gagnées |
| round_losses | nombre entier | Nombre de manches perdues |
| kills | nombre entier | Nombre d'éliminations |
| deaths | nombre entier | Nombre de morts |
| assists | nombre entier | Nombre d'assistances |
| kdr | nombre décimal | Ratio d'éliminations/morts |
| avg_dmg_delta | nombre décimal | Différence de dégâts reçus et infligés en moyenne à chaque manche |
| headshot_pct | nombre décimal | Pourcentage de tirs dans la tête touchés |
| avg_dmg | nombre décimal | Moyenne des dégâts infligés aux ennemis par manche |
| acs | nombre | Moyenne du score de combat de chaque manche (calculé par le jeu) |
| num_frag | nombre entier | Rang interne à l'équipe en fonction du nombre d'éliminations (1 = plus d'éliminations, 5 = moins d'éliminations) |

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
| traded | nombre | Nombre de fois où un allié venge la mort du joueur |
| kills | nombre | Nombre de joueurs tués |
| matches | nombre | Nombre de matchs joués |
| deaths | nombre | Nombre de morts du joueur |
| damage | nombre | Quantité totale de dégâts portés à d'autres joueurs |

Ce dataset peut être très intéressant car nous avons une répartition de joueurs de tous niveaux. Il peut être utile pour s'intéresser à de possibles corrélations entre l'expérience d'un joueur et certaines statistiques. Aussi, il serait intéressant de voir si certains joueurs sortent exceptionnellement du lot sur certains points, comme un nombre de parties très réduit pour un rang élevé, ou à l'inverse de très grosses statistiques générales pour un rang médiocre.

### 5. Large Scale Valorant Dataset 2020-2024

- https://www.reddit.com/r/ValorantCompetitive/comments/1odnm63/large_scale_valorant_dataset_20202024/

| Nom | Format | Description |
|---|---|---|
| MatchID | nombre entier | Identifiant unique du match (série complète entre deux équipes) |
| GameID | nombre entier | Identifiant unique d'une map individuelle au sein d'un match |
| EventID | nombre entier | Identifiant de l'événement / tournoi auquel appartient le match |
| Date | date | Date du match (format YYYY-MM-DD) |
| Team1ID | nombre entier | Identifiant unique de l'équipe 1 |
| Team2ID | nombre entier | Identifiant unique de l'équipe 2 |
| Team1 Name | chaîne de caractères | Nom de l'équipe 1 |
| Team2 Name | chaîne de caractères | Nom de l'équipe 2 |
| Series Odds | nombre décimal | Cote de pari initiale (donnée par VLR.gg) sur la victoire de l'équipe gagnante — 0 si non disponible |
| Team1 Map Odds | nombre décimal | Cote de pari sur cette map spécifique pour l'équipe 1 — 0 si non disponible |
| Map | nombre entier | Identifiant numérique de la map jouée (ex. 1 = Bind, 3 = Haven, etc.) |
| Team1 Rounds | nombre entier | Nombre total de rounds remportés par l'équipe 1 sur cette map |
| Team2 Rounds | nombre entier | Nombre total de rounds remportés par l'équipe 2 sur cette map |
| Team1 Atk Rounds | nombre entier | Rounds remportés par l'équipe 1 en phase d'attaque |
| Team2 Atk Rounds | nombre entier | Rounds remportés par l'équipe 2 en phase d'attaque |
| Team1 Def Rounds | nombre entier | Rounds remportés par l'équipe 1 en phase de défense |
| Team2 Def Rounds | nombre entier | Rounds remportés par l'équipe 2 en phase de défense |
| Team1 Rating | nombre décimal | Rating moyen de l'équipe 1 (indice de performance global, ~1.0 = neutre) |
| Team2 Rating | nombre décimal | Rating moyen de l'équipe 2 |
| Team1 ACS | nombre décimal | Average Combat Score moyen de l'équipe 1 (score de combat par round) |
| Team2 ACS | nombre décimal | Average Combat Score moyen de l'équipe 2 |
| Team1 Kills | nombre décimal | Total de kills de l'équipe 1 sur la map |
| Team2 Kills | nombre décimal | Total de kills de l'équipe 2 |
| Team1 Deaths | nombre décimal | Total de morts de l'équipe 1 |
| Team2 Deaths | nombre décimal | Total de morts de l'équipe 2 |
| Team1 Assists | nombre décimal | Total d'assistances de l'équipe 1 |
| Team2 Assists | nombre décimal | Total d'assistances de l'équipe 2 |
| Team1 DeltaK/D | nombre décimal | Différentiel Kills − Deaths de l'équipe 1 (positif = plus de kills que de morts) |
| Team2 DeltaK/D | nombre décimal | Différentiel K/D de l'équipe 2 |
| Team1 KAST | nombre décimal | % de rounds où l'équipe 1 a eu au moins un Kill, Assist, Survived ou Trade |
| Team2 KAST | nombre décimal | KAST de l'équipe 2 |
| Team1 ADR | nombre décimal | Average Damage per Round de l'équipe 1 (dégâts moyens infligés par round) |
| Team2 ADR | nombre décimal | ADR de l'équipe 2 |
| Team1 HS | nombre décimal | % de kills en headshot de l'équipe 1 |
| Team2 HS | nombre décimal | % de kills en headshot de l'équipe 2 |
| Team1 FK | nombre décimal | Nombre de First Kills (premier kill du round) obtenus par l'équipe 1 |
| Team2 FK | nombre décimal | First Kills de l'équipe 2 |
| Team1 FD | nombre décimal | Nombre de First Deaths (premier mort du round) subis par l'équipe 1 |
| Team2 FD | nombre décimal | First Deaths de l'équipe 2 |
| Team1 DeltaFK/FD | nombre décimal | Différentiel FK − FD de l'équipe 1 (avantage en ouverture de round) |
| Team2 DeltaFK/FD | nombre décimal | Différentiel FK/FD de l'équipe 2 |
| Team1 Pistols | nombre entier | Rounds de pistolet (rounds 1 et 13) remportés par l'équipe 1 |
| Team2 Pistols | nombre entier | Rounds de pistolet remportés par l'équipe 2 |
| Team1 EcosWon | nombre entier | Éco-rounds remportés par l'équipe 1 (rounds avec budget très limité) |
| Team2 EcosWon | nombre entier | Éco-rounds remportés par l'équipe 2 |
| Team1 Ecos | nombre entier | Nombre total d'éco-rounds joués par l'équipe 1 |
| Team2 Ecos | nombre entier | Éco-rounds joués par l'équipe 2 |
| Team1 Semibuys Won | nombre entier | Semi-achats (force buys) remportés par l'équipe 1 |
| Team2 Semibuys Won | nombre entier | Semi-achats remportés par l'équipe 2 |
| Team1 Semibuys | nombre entier | Total de semi-achats joués par l'équipe 1 |
| Team2 Semibuys | nombre entier | Semi-achats joués par l'équipe 2 |
| Team1 Fullbuys Won | nombre entier | Full-buys remportés par l'équipe 1 (rounds avec achat complet) |
| Team2 Fullbuys Won | nombre entier | Full-buys remportés par l'équipe 2 |
| Team1 Fullbuys | nombre entier | Total de full-buys joués par l'équipe 1 |
| Team2 Fullbuys | nombre entier | Total de full-buys joués par l'équipe 2 |
| Round Breakdown | chaîne de caractères | Données détaillées round par round encodées en chaîne (résultat, temps de plant/défuse, probabilités de victoire) |
| Team1Game1 | nombre entier | ID du joueur 1 de l'équipe 1 sur cette map |
| Team1Game2 | nombre entier | ID du joueur 2 de l'équipe 1 sur cette map |
| Team1Game3 | nombre entier | ID du joueur 3 de l'équipe 1 sur cette map |
| Team1Game4 | nombre entier | ID du joueur 4 de l'équipe 1 sur cette map |
| Team1Game5 | nombre entier | ID du joueur 5 de l'équipe 1 sur cette map |
| Team2Game1 | nombre entier | ID du joueur 1 de l'équipe 2 sur cette map |
| Team2Game2 | nombre entier | ID du joueur 2 de l'équipe 2 sur cette map |
| Team2Game3 | nombre entier | ID du joueur 3 de l'équipe 2 sur cette map |
| Team2Game4 | nombre entier | ID du joueur 4 de l'équipe 2 sur cette map |
| Team2Game5 | nombre entier | ID du joueur 5 de l'équipe 2 sur cette map |
| VOD Link | chaîne de caractères | Lien YouTube vers le VOD de la map (avec timestamp), peut être vide |

L'encodage pour la colonne Round Breakdown est le suivant:
- Bit 1: Winning team(T1, T2), (0, 1)
- Bit 2: Winning side(ATK, DEF), (0, 1)
- Bit 3 + 4: Amount Spent(T1, T2), (0-4, 0-4)
- Bit 5: Seperator Bit('!)
- Number : Team 1 Bank Amount (in thousands)
- Seperator Bit('!)
- Number : Team 2 Bank Amount (in thousands)
Seperator Bit('!) 

Ce dataset contient énormément de données différentes. Elles ne sont donc pas toutes utiles, mais on pourrait par exemple analyser l’impact des statistiques avancées (ACS, K/D,...) sur la victoire, ou comparer l’efficacité attaque/défense selon les maps pour identifier des tendances de gameplay et quelles maps seraient plus avantageuses que d'autres pour un camp. On pourrait aussi s'intéresser à la probabilité initiale qu'une équipe gagne contre une autre et le résultat final.

### 6. VALORANT Agents/Weapons/Maps Stats

### Agents
Statistiques sur les différents personnages jouables (agents) du jeu lors des compétitions en Diamond+.*
https://blitz.gg/valorant/stats/agents

| Nom | Format | Description |
|-----|--------|-------------|
| Rank | nombre entier | Identifiant du personnage |
| Agent | chaîne de caractères | Nom du personnage |
| KD | nombre décimal | Nombre de personnages tués en fonction du nombre de morts |
| KDA | chaîne de caractères : "int/int/int" | Nombre de personnages tués en partie / Nombre de fois où le personnage est mort en partie / Nombre de personnages tués par assistance |
| Win % | "nombre décimal%" | Pourcentage de gains avec ce personnage |
| Pick % | "nombre décimal%" | Pourcentage de choix de ce personnage lors d'une partie |
| Avg.Score | nombre entier | Score moyen effectué avec ce personnage|
| Matches | nombre entier | nombre de matches joués avec ce personnage 

### Weapons
Statistiques sur les différentes armes du jeu jouables (weapons) du jeu lors des compétitions en Diamond+.
https://blitz.gg/valorant/stats/weapons
| Nom | Format | Description |
|-----|--------|-------------|
| Rank | nombre entier | Identifiant de l'arme |
| Weapon | chaîne de caractères | Nom de l'arme |
| Kills per Round | nombre décimal | Nombre de personanges tués / Nombre de rounds effectués |
| All kills per Round | nombre décimal | [HELP] |
| Headshot % | "nombre décimal%" | Pourcentage de tirs dans la tête |
| Bodyshot % | "nombre décimal%" | Pourcentage de tirs dans le haut du corps |
| Legshot % | "nombre décimal%" | Pourcentage de tirs dans les jambes |
| Avg Damage | nombre entier | Nombre de dégats moyens effectués durant une partie |

### Maps
Statistiques sur les différentes cartes du jeu lors des compétitions en Diamond+.
https://blitz.gg/valorant/stats/maps

| Nom | Format | Description |
|-----|--------|-------------|
| Rank | nombre entier | Identifiant de la carte |
| Map | chaîne de caractères | Nom de la carte |
| Play Rate | "nombre décimal%" | Pourcentages des parties effectuées dans cette carte. |
| Attacking Round Won | "nombre décimal%" | Pourcentage des rounds gagnés sur cette carte par les attaquants |
| Defending Round Won | "nombre décimal%" | Pourcentage des rounds gagnés sur cette carte par les défenseurs |
| Matches Played | nombre entier | Nombre de matchs joués sur cette cartes |


### 7. Statistiques des performances des joueurs professionnels
https://www.vlr.gg/stats

| Nom | Format | Description |
|-----|--------|-------------|
| Player | chaîne de caractères | Nom du joueur |
| Agents | chaîne de caractères | Nom des personnages joués par ce joueur |
| Rnd | nombre entier | Nombre de manches jouées |
| R^2.0 | nombre décimal | [HELP] |
| ACS | nombre décimal | Score moyen de combat du joueur (Moyenne des points gagnés par round |
| K:D | nombre décimal |  Nombre de joueurs tués en fonction du nombre de morts |
| KAST | nombre entier% | Pourcentage de manches au cours desquelles un joueur a réalisé au moins l'une de ces quatre actions : Tuer, Tuer par assistance, Survivre, Échanger |
| ADR | nombre décimal | Dégats moyens effectués par manche |
| KPR | nombre décimal | Nombre moyen de joueurs tués par manche |
| APR | nombre décimal | Nombre moyen de joueurs tués par assistance par manche |
| FKPR | nombre décimal | Nombre moyen de premiers kills obtenus par manche par un joueur |
| FDPR | nombre décimal | Nombre moyen de premières morts d'un joueur |
| HS% | nombre entier% | Pourcentages de tirs dans la tête effectués par ce joueur |
| CL% | nombre entier% | Pourcentage des manches gagnées où le joueur était le dernier de son équipe encore en vie |
| CL | nombre entier/nombre entier | Manches où le joueur était le dernier de son équipe encore en vie : Gagnées/Jouées |
| KMAX | nombre entier | Nombre de joueurs tués maximum dans une seule carte |
| K | nombre entier | Nombre de joueurs tués |
| D | nombre entier | Nombre de morts |
| A | nombre entier | Nombre de joueurs tués par assistance |
| FK | nombre entier | Nombre de première personne tuée de la manche |
| FD | nombre entier | Nombre de fois où le joueur a été le premier joueur tué de la manche |


## Plan d'analyse
### 1. Quelles sont les différences majeures entre les joueurs pros et non pros ?

Il s'agit d'une question globale, qu'on peut prendre sous de nombreux aspects. On va étudier les statistiques qu'on peut prendre chez les joueurs pros, et les comparer avec celles des non pros, comme par exemple les agents joués, le pourcentage de victoire sur chaque carte, la gestion de l'économie... On pourra établir des tendances différentes pour voir en quoi les pros sont meilleurs.

### 2. Quels personnages sont les plus meurtriers ?

En prenant en compte seulement les joueurs non pros, on veut voir si un agent dont les compétences sont orientées vers l'agression vont avoir une quantité d'élimination largement supérieure ou non, comparée à des agents plus axés soutien ou contrôle. On pourra également observer le nombre de morts et assistances pour étayer notre conclusion.

### 3. Quels joueurs pros ont la carrière la plus prolifique ?

En utilisant les tableaux liés aux pros, on pourra voir les joueurs ayant la carrière la plus longue, ceux qui ont eu une ascension fulgurante, ceux qui se sont essouflés, et d'autres évolutions de carrière. Cette question servira surtout à observer les joueurs prometteurs pour voir où est-ce qu'on les retrouvera dans d'autres analyses.

### 4. Quelles sont les meilleures situations de clutch ?

Un clutch est une situation où une équipe arrive à renverser une situation en gagnant une manche avec un seul joueur en vie contre plusieurs adversaires. On pourra voir si le rang, l'agent ou l'arme influe sur le potentiel de clutch, ou si c'est équitablement réparti.
On pourra aussi voir avec les joueurs pros si certains d'entre eux sont particulièrement habitués aux clutchs.

### 5. Quelles cartes sont orientées attaque ou défense ?

Les cartes ne sont pas toujours équilibrées pour les attaquants ou les défenseurs. Si l'une d'entre elles favorise les défenseurs, on pourra expliquer en partie leurs victoires répétées. On étudiera d'abord pour les joueurs normaux, puis on verra si les pros sont aussi sujets à ces déséquilibres.

### 6. Qu'est-ce qui compte le plus pour gagner une partie ?

On sait déjà que tuer tous les adversaires permet de gagner une manche, mais on veut étudier si les autres facteurs comme un choix d'agents optimal, ue stratégie précise, ou une bonne gestion de l'économie permet de faire pencher la balance. Il faut faire attention avec ces données car certaines peuvent découler directement des autres. Par exemple, gagner une manche permet d'avoir plus de crédits à dépenser pour gagner le suivant. On pourra voir si ces critères changent entre les joueurs normaux et les pros.

### 7. Quelles sont les meilleures équipes ?

Quelles sont les équipes professionnelles ayant résisté au temps ? Celles qui émergent ? Celles qui forment les meilleurs talents ? Notre réponse sera évidemment subjective, mais on pourra l'argumenter de nombreuses façons.

### 8. Quelles sont les meilleures équipes par année ?

Complémentaire à la question précédente, on pourra ainsi voir l'évolution des équipes, et la corréler aux changements de joueurs ou de coachs, ou bien d'ajouts de cartes ou d'agents, pour voir les causes de ces évolutions.

### 9. Quel est le lien entre first blood et victoire ?

Le first blood est le joueur ayant tué en premier dans une manche. On veut voir si il y a un lien entre le first blood et gagner la manche, ou si il est pluôt lié à un agent, un joueur ou une carte précis.
On peut étudier la différence entre des joueurs normaux et pros.

### 10. Comment la visée ou le KDA influe sur le rang ?

Sans compter les joueurs pros, qui ont une visée nettement supérieure à celle des joueurs normaux, on verra si augmenter son KDA (ratio d'éliminations sur morts) et sa visée influe sur le rang. On pourra potentiellement créer un modèle qui attribuerait un rang à un joueur en entrant ces statistiques.

### 11. Impact des parties précédentes sur l'actuelle
Pouvoir étudier l'influence du résultat des parties précédentes sur le winrate de la partie n. L'intérêt serait pouvoir de créer un tableau 2x4 surles parties n-1 et n-2 (Depuis Victoire, Victoire / Victoire, Défaite, etc.. vers Victoire/Défaite)

### 12. Meilleures équipes / personnages en attaque / défense
L'idée est d'identifier si certains personnages et/ou certaines configurations d'équipes sont plus performante en attaque ou en défense, afin de savoir comment l'équilibre du jeu est impacté par la composition de l'équipe.

### 13. Identifier les stratégies
Réussir à comprendre les stratégies par joueur et / ou par équipe. C'est à dire comment se comporte(nt) le(s) joueur(s), de façon aggressive ? passive ? et comment cela impacte leurs performances.

### 14. Explication d'un ban (joueur ou carte)
Essayer de comprendre ce qui a poussé une équipe à bannir certains personnages en étudiant les points suivants : 
- Est-ce à cause d'un joueur en particulier ?
- Est-ce à cause de la map ?
- Une synergie problématique ?
- Un personnage META ?

### 15. Travail d'équipe (assists/kill)
Nous aimerions étudier si la performance d'une équipe est liée à la quantité de travail en équipe, ou si des joueurs indépendants permettent d'accomplir des victoires.

### 16. Quels joueurs performent le mieux malgré une défaite ?
Nous souhaiterions étudier si les séries de défaites impactent négativement les performances individuelles, et identifier les exceptions (joueurs qui performent de façon constante malgré les défaites)

### 17. Nemesis (pire ennemi des joueurs)
Identifier les joueurs qui sont le plus tués par d'autres joueurs, et identifier des counters potentiels (couple agent/map)

### 18. Changement de joueurs -> gagner ?
L'intérêt est de savoir si une équipe qui change souvent de joueurs (roster) subit des modifications importantes sur sa performance, donc identifier l'impact des équipes autour des joueurs(coachs, spécialistes, etc.)

### 19. Synergies entre joueurs
Nous souhaiterions savoir si certains types de joueurs ont tendance à mieux gagner accompagnés de quel type de joueur. Exemple : Un joueur agressif est il plus à même de gagner avec d'autres joueurs agressifs ou avec des joueurs plus tempérés ?

### 20. Joueurs les plus adaptables
Nous souhaiterions identifier s'il y a des joueurs qui ont une très bonne adaptabilité en jeu, c'est à dire qui s'intègrent bien dans n'importe quelle configuration d'équipe sans que les performances en soient impactées
