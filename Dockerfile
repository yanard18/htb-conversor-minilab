FROM python:3.9-slim

# Set up the working directory
WORKDIR /var/www/conversor.htb

# Copy the source code
COPY . .

# Install dependencies (Flask and lxml are required based on the source)
RUN pip install --no-cache-dir flask lxml

# Ensure the upload and instance directories exist and have the right permissions
RUN mkdir -p /var/www/conversor.htb/uploads /var/www/conversor.htb/instance && \
    chmod 777 /var/www/conversor.htb/uploads /var/www/conversor.htb/instance

# Expose the Flask port
EXPOSE 5000

# Set environment variables for Flask
ENV FLASK_APP=app.py
ENV FLASK_ENV=development

# Run the application
CMD ["flask", "run", "--host=0.0.0.0"]
