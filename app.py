from flask import Flask, request, render_template
import pickle
import pandas as pd

app = Flask(__name__, template_folder='template')


@app.route('/')
def home():
    return render_template('index.html')


@app.route('/event-rs')
def eventrs():
    return render_template('event-rs.html')


@app.route('/login')
def login():
    return render_template('login.html')


events = pickle.load(open('events2.pkl', 'rb'))
similarity = pickle.load(open('similarity2.pkl', 'rb'))


@app.route('/events', methods=["GET", "POST"])
def recommend_events():
    if request.method == 'POST':
        event = request.form['event']
        try:
            index = events[events['name'] == event].index[0]
        except IndexError:
            return render_template('event-rs.html', error='Invalid event name. Please try again.')
        distances = sorted(
            list(enumerate(similarity[index])), reverse=True, key=lambda x: x[1])
        recommended_event_names = []
        for i in distances[1:6]:
            recommended_event_names.append(events.iloc[i[0]]['name'])
        return render_template('event-rs.html', recommend=recommended_event_names)
    else:
        return render_template('event-rs.html')


if __name__ == '__main__':
    app.run(debug=True)
