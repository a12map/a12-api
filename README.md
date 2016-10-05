# A12 Api

This application is meant as a prototype of the API for A12 project. It is implemented using the Flask framework.

# Setup

1. Run `pip install -r requirements.txt`
2. Run `gunicorn -w=$((2*$NUM_OF_CORES + 1)) --bind 0.0.0.0:$PORT runserver.py A12Api:app` where `$NUM_OF_CORES` is the number of cores in your processor. Optionally pass additional parameters according to the Gunicorn documentation.