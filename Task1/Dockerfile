# Use Python 3.6 or later as a base image
FROM python:3.7
# Copy contents into image
COPY requirements.txt .
# Install pip dependencies from requirements
RUN pip install -r requirements.txt
# Set YOUR_NAME environment variable
ENV YOUR_NAME=bob
# Expose the correct port
EXPOSE 5500
# Copy app.py
COPY app.py .
# Create an entrypoint
ENTRYPOINT ["python", "app.py"]
