# Use the official Python image as the base image
FROM python:3.9-slim

# Set the working directory within the container
WORKDIR /app

# Copy the requirements file to the working directory
COPY requirements.txt .

# Install required Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code to the container
COPY . .

# Expose the port on which the FastAPI app will run (if using FastAPI)
EXPOSE 8000

# Command to run when the container starts
CMD [ "python", "main.py" ]
