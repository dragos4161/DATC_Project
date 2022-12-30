FROM python:3-slim

WORKDIR /api-docker

COPY requirements.txt requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
COPY . .

ENTRYPOINT [ "python" ]
CMD [ "app.py" ]