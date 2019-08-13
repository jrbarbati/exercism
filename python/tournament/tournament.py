WIN = 'win'
LOSS = 'loss'
DRAW = 'draw'


def tally(rows: list) -> list:
    return tournament_result(parse_rows(rows))


def parse_rows(rows: list) -> dict:
    teams = {}

    for row in rows:
        first_team, second_team, game_result = row.split(';')[0], row.split(';')[1], row.split(';')[2]

        teams = add_teams(teams, [first_team, second_team])

        if game_result == WIN:
            teams[first_team].win()
            teams[second_team].loss()

        if game_result == LOSS:
            teams[first_team].loss()
            teams[second_team].win()

        if game_result == DRAW:
            teams[first_team].draw()
            teams[second_team].draw()

    return teams


def add_teams(teams: dict, add_these: list) -> dict:
    for team in add_these:
        if team not in teams:
            teams[team] = Team(team)

    return teams


def tournament_result(teams: dict) -> list:
    results = ['Team                           | MP |  W |  D |  L |  P']
    for team in sorted(teams.values(), key=lambda t: (-t.points, t.name)):
        results.append('{0: <31}|  {1} |  {2} |  {3} |  {4} |  {5}'.format(
            team.name,
            team.matches_played(),
            team.wins,
            team.draws,
            team.losses,
            team.points
        ))

    return results


class Team:
    def __init__(self, name: str):
        self.name = name
        self.wins = 0
        self.losses = 0
        self.draws = 0
        self.points = 0

    def win(self):
        self.wins += 1
        self.points += 3

    def loss(self):
        self.losses += 1

    def draw(self):
        self.draws += 1
        self.points += 1

    def matches_played(self):
        return self.wins + self.losses + self.draws
