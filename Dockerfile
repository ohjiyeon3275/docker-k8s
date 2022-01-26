FROM python:3.9

WORKDIR /app

RUN pip3 install flask

COPY . .

ENV PORT 5555

VOLUME [ "/app/temp" ]

CMD ["python3", "main.py"]

EXPOSE $PORT
