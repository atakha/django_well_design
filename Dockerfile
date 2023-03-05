FROM python:3.10-slim

#this line is very important if we don't include it then it will not run show python command not command
ENV PYTHONUNBUFFERED=1 

WORKDIR /app

RUN apt-get update && apt-get install python3-dev default-libmysqlclient-dev gcc -y
COPY requirements.txt .

RUN pip install -r requirements.txt

# COPY . /app
COPY . .

# EXPOSE 8000

# ENTRYPOINT ["python", "manage.py"]
# CMD ["runserver", "0.0.0.0:8000"]