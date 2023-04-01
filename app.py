from flask import Flask, request, render_template
# from recommendation_system import Similar_Movies
import pickle
import pandas as pd

# create an instance
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


events = pickle.load(open('events2.pkl','rb'))
similarity = pickle.load(open('similarity2.pkl','rb'))
# Set the URL for the Function
@app.route('/movies' , methods = ["POST"])
def TOP5():
    if request.method == 'POST':
        event = request.form['movie']
        index = events[events['name'] == event].index[0]
        distances = sorted(list(enumerate(similarity[index])), reverse=True, key=lambda x: x[1])
        recommended_event_names = []
        for i in distances[1:6]:
            
            event_id = events.iloc[i[0]].event_id
            recommended_event_names.append(events.iloc[i[0]]['name'])

        # name = request.form['movie']
        # cosine = pickle.load(open('similarity.pkl','rb'))


        event_list = events['name'].values


        ans = recommended_event_names[0],           recommended_event_names[1],         recommended_event_names[2],         recommended_event_names[3],         recommended_event_names[4]
        if isinstance(ans,list): return render_template('event-rs.html', recommend = ans)
        else: return render_template('event-rs.html', recommend = ans)

if __name__ == '__main__':
    app.run(debug=True)