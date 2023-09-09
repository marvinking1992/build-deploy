# Use an official Python runtime as the base image
FROM python:3.8-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the local application files into the container
COPY app.py ./
COPY requirements.txt ./

# Install any needed Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000 for the Flask app to listen on
EXPOSE 5000

# Define the command to run the application using Flask's development server
CMD ["python", "./app.py"]
