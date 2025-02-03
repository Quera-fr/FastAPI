FROM continuumio/miniconda3

WORKDIR /home/app
COPY requirements.txt .

RUN pip install -r requirements.txt

COPY api.py .

CMD uvicorn api:app --port $PORT --host 0.0.0.0