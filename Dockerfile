FROM python:3.10-slim-buster

WORKDIR /app

COPY . /app

RUN pip install --upgrade pip

# Install requirements
RUN pip install --no-cache-dir -r requirements.txt

# Remove wrong multipart if exists
RUN pip uninstall -y multipart || true

# Reinstall correct one
RUN pip install python-multipart==0.0.6

CMD ["python3", "app.py"]
