index.html: talk.md
	python refreezex/freeze.py

test:
	python -m pytest -vx --doctest-glob '*.md'

RANDOM_PORT=`python -c 'import random; print(int(5000+ 5000*random.random()))'`

slideshow:
	PORT=$(RANDOM_PORT) python refreezex/flask_app.py
