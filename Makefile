install:
		python -m pip install --upgrade pip &&\
					pip install -r requirements.txt

test:
		python -m pytest --nbval Data_Science_With_Covid.ipynb

format: 
		black * .py

lint:
		pylint --disable=R,C hello.py

all: install lint test