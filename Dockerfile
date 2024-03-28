FROM python:3.8-slim-buster

WORKDIR /app

COPY . .

RUN pip install pandas numpy seaborn

CMD [ "python3","createPlot.py"]