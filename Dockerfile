FROM python:3.4

RUN groupadd -r tkech17 && useradd -r -g tkech17 tkech17
RUN pip install Flask==0.10.1 requests==2.5.1 redis==2.10.3
WORKDIR /app
COPY app /app

EXPOSE 9090 9191
USER tkech17

CMD ["python", "identidock.py"]