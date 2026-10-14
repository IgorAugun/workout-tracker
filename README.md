# POMPA – Workout Tracker

A personal workout-tracking project: a relational MySQL database of gym exercises and logged workouts, a Flask web interface (in development) and a data analysis notebook based on my own training log.

![App screenshot](docs/workout.png)

![App screenshot](docs/exercises.png)

## Status

Done:
- Relational database (5 tables) with a seeded library of 76 exercises
- Exercise library page (browse all exercises)
- Workout history page (list of logged workouts)
- Data analysis notebook (pandas, matplotlib)

In development:
- Web form for logging workouts (replacing manual SQL inserts)

## Database

| Table | Purpose |
|---|---|
| `exercises` | Exercise library |
| `categories` | Classification (body part, movement, pattern) |
| `exercise_categories` | Many-to-many link between exercises and categories |
| `equipment` | Equipment types |
| `workout` | Logged workout entries (date, exercise, equipment, weight, reps, sets) |

## Data analysis

`analysis/analiza.ipynb` analyses my own training log (8 sessions, 26 Apr - 17 May 2026) loaded from MySQL with `pd.read_sql`:

- training volume per session (weight × reps × sets)
- most frequent exercises
- weight progression for selected exercises
- training days per week

Volume is a simplification: it assumes the same weight and reps in every set. Sessions with only bodyweight exercises are excluded from volume. The notebook reads from a local MySQL database; the data is not included for privacy, and outputs are saved in the notebook.

## Tech stack

Python, Flask, MySQL (`mysql-connector-python`), Jinja2, pandas, matplotlib, SQLAlchemy.

## Running the app locally

```bash
git clone https://github.com/IgorAugun/workout-tracker.git
cd workout-tracker

python -m venv venv
venv\Scripts\activate
pip install -r requirements.txt

mysql -u root -p -e "CREATE DATABASE pompa"
mysql -u root -p pompa < sql/schema.sql
mysql -u root -p pompa < sql/seed.sql

# create .env from the template, then set DB_PASSWORD in it
copy .env.example .env
python app.py
```

Open http://127.0.0.1:5000. The `workout` table starts empty.

## Roadmap

- Finish the workout logging form
- Stats page based on the analysis notebook
- Exercise library page listing also categories