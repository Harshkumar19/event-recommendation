from flask_wtf import FlaskForm
from wtforms import StringField, SubmitField
from wtforms.validators import DataRequired

class EventForm(FlaskForm):
    search_field = StringField('Search', validators=[DataRequired()])
    submit = SubmitField('Submit')