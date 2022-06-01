FROM python:3.8-slim 

COPY requirement.txt .

RUN pip install -r requirement.txt

RUN mkdir -p app

COPY ./app app

EXPOSE 80

CMD ["uvicorn","app.main:app", "host","--port","80"]

