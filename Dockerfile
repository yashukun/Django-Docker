# Base image: Use a lightweight Python image with Alpine Linux as the base
FROM python:alpine

# Set the working directory within the container
WORKDIR /usr/src/app

# Copy requirements.txt file to the working directory
COPY requirements.txt ./

# Install system dependencies and Python packages
RUN apk update && rm -rf /var/lib/apt/lists/* && pip install -r requirements.txt

# Copy all project files to the working directory
COPY . .

# Expose port 8000 for the application to be accessible
EXPOSE 8000

# Define the default command to run when starting the container
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
# Also in settings.py which is in main folder ## ALLOWED_HOSTS = ["*"] this allows all host
