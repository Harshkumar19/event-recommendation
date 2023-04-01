from flask import Flask, request, render_template, redirect, url_for, flash
from flask_login import current_user, login_required

import pickle
import pandas as pd
from flask_sqlalchemy import SQLAlchemy
from forms.LoginForm import LoginForm
from forms.EventForm import EventForm
from forms.RegistrationForm import RegistrationForm
# from werkzeug.security import check_password_hash, generate_password_hash

app = Flask(__name__, template_folder='template')
app.config['SECRET_KEY'] = 'your-secret-key!!!'
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+mysqlconnector://root:@127.0.0.1/event'
db = SQLAlchemy(app)

@app.route('/')
def home():
    return render_template('index.html')


# @app.route('/event-rs')
# def eventrs():
#     return render_template('event-rs.html')


@app.route('/register', methods=['GET', 'POST'])
def register():
    from models import UserModel, Friendship
    form = RegistrationForm()
    if form.validate_on_submit():
        user = UserModel(email=form.email.data, password=form.password.data)
        db.session.add(user)
        db.session.commit()

        # Create friendship records with existing users
        existing_users = db.session.query(UserModel).all()
        friendships = [Friendship(user_id=user.user_id, friend_id=u.user_id) for u in existing_users]
        db.session.add_all(friendships)
        db.session.commit()

        return redirect(url_for('recommend_events'))
    return render_template('register.html', form=form)

@app.route('/login', methods=['GET', 'POST'])
def login():
    from models import UserModel
    form = LoginForm()
    if form.validate_on_submit():
        user = db.session.query(UserModel).filter_by(email=form.email.data).first()
        if user and user.password == form.password.data:
            # Successful login
            return redirect(url_for('recommend_events'))
        else:
            # Failed login
            flash('Invalid email or password')
    return render_template('login.html', form=form)

events = pickle.load(open('events2.pkl', 'rb'))
similarity = pickle.load(open('similarity2.pkl', 'rb'))


@app.route('/events', methods=["GET", "POST"])
def recommend_events():
    form = EventForm()
    if form.validate_on_submit():
        search_query = form.search_field.data
        # Do something with the search query
        try:
            index = events[events['name'] == search_query].index[0]
        except IndexError:
            return render_template('event-rs.html', form=form, error='Invalid event name. Please try again.')
        distances = sorted(
            list(enumerate(similarity[index])), reverse=True, key=lambda x: x[1])
        recommended_event_names = []
        for i in distances[1:6]:
            recommended_event_names.append(events.iloc[i[0]]['name'])
        print('recommended_event_names', recommended_event_names)
        return render_template('event-rs.html', form=form, recommend=recommended_event_names)
    return render_template('event-rs.html', form=form)


if __name__ == '__main__':
    with app.app_context():
        db.create_all()
    app.run(debug=True)