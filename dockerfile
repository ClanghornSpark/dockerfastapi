FROM python:3.9-slim-bullseye

WORKDIR /code


# Install dependencies:
COPY requirements.txt .
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# Run the application:
COPY ./app /code/app
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]