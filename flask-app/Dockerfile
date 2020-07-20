FROM python:latest
RUN pip3.8 install flask
COPY app.py /
ENV FLASK_APP=/app.py
EXPOSE 80 5000
ENTRYPOINT flask run
