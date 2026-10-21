# Use Python 3.7 as a base image
FROM python:3.7
# Copy requirements file into image
COPY requirements.txt .
# install pip dependencies from requirements file
RUN pip install -r requirements.txt
# Copy app files
COPY . .
# Expose correct port
EXPOSE 5000
# Set env var
ENV PASSWORD=changeMe123
# Create an entrypoint
ENTRYPOINT ["python", "app.py"]

