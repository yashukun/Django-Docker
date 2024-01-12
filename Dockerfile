FROM python:alpine
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN apk update && rm -rf /var/lib/apt/lists/* && pip install -r requirements.txt
COPY . .
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
EXPOSE 8000