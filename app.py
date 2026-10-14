import os
from dotenv import load_dotenv
from flask import Flask, request, render_template
import mysql.connector

load_dotenv()

app = Flask(__name__)

pompa = mysql.connector.connect(host=os.getenv('DB_HOST', 'localhost'),
                                   user=os.getenv('DB_USER'),
                                   password=os.getenv('DB_PASSWORD'),
                                   database=os.getenv('DB_NAME', 'pompa'))
cursor = pompa.cursor()

@app.route('/')
def home():
    return render_template('index.html')

@app.route('/workout')
def list_workout():
    cursor.execute('SELECT * FROM workout')
    workouts = cursor.fetchall() # this exact name 'workouts' is also used when doing for loop in .html file '{% for exerc in workouts %}'
    return render_template('workout.html', workouts=workouts)

@app.route('/exercises')
def list_exercises():
    cursor.execute('SELECT * FROM exercises')
    exercises = cursor.fetchall()
    return render_template('exercises.html', exercises=exercises)

@app.route('/log', methods=['GET', 'POST'])
def exercise_entry():
    if request.method == 'POST':
        test_text = request.form.get('testname')
        test_list = []
        test_list.append(test_text)
        print(test_text)
        # sql = 'INSERT INTO test (test_name) VALUES (%s)'
        # val = (test_list)
        # cursor.execute(sql, val)
        cursor.execute('INSERT INTO test (test_name) VALUES (%s)', (test_list)) # both work ^^^
        pompa.commit()
        print('Success!')
    return render_template('log.html')


if __name__ == '__main__':
    app.run()