# Dataset Description

## IPL Ball-by-Ball Dataset

This project uses IPL ball-by-ball data covering **2008–2022**. The data is at delivery/event level: each row represents a recorded delivery event from an IPL match.

### Approximate size
- Rows: **225,954**
- Columns: **17**
- Period: **2008–2022**

### Important fields

| Field | Meaning |
|---|---|
| `batter` | Batter who faced the delivery |
| `bowler` | Bowler who delivered the ball |
| `BattingTeam` | Team batting on that delivery |
| `batsman_run` | Runs scored by the batter |
| `total_run` | Total runs recorded on the delivery |
| `extras_run` | Extra runs recorded |
| `overs` | Over associated with the delivery |
| `innings` | Innings number |
| `isWicketDelivery` | Wicket indicator |
| `kind` | Dismissal type |
| `extra_type` | Extra type |

## How it is used

The dataset is used for questions involving team totals, batter totals, bowler totals, delivery counts, wickets, extras, boundaries and aggregate thresholds.

### `batsman_run` vs `total_run`

- `batsman_run` = runs credited to the batter.
- `total_run` = total runs recorded for the delivery and can include extras.

Therefore, batter scoring analysis generally uses `SUM(batsman_run)`, while delivery/team total analysis can use `SUM(total_run)`.

## Data Handling Note

Some thresholds in the practice questions are deliberately chosen for SQL revision and are not intended to represent official IPL rankings or conclusions.

## Source / Attribution

Before publishing the dataset publicly, add the original dataset URL and license/attribution information required by its source.
