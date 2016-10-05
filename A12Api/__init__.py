"""
The flask application package.
"""

from flask import Flask
from flask_cors import CORS

app = Flask(__name__)
CORS(app)
import A12Api.views
