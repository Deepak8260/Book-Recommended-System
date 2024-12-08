# Use the official Python image as a base
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file to the container
COPY requirements.txt ./ 

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code and necessary data files to the container
COPY . .

# Expose the port that the Flask app runs on
EXPOSE 8000

# Use JSON array format for CMD
CMD ["python", "app.py"]
