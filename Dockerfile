# Use Python 3.9 as base image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the current directory content into the container at /app
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port Flask will run on
EXPOSE 5000

# Command to run the app
CMD ["python", "app.py"]
