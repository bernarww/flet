FROM python:3.12
WORKDIR /app
COPY ./requirements.txt .
RUN pip install -r requirements.txt
COPY ./app .
EXPOSE 8550
CMD ["python", "main.py"]
# docker-compose up --build -d