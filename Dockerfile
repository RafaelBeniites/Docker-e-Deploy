FROM python:3.12-slim

WORKDIR /code

# copy requirements file into the container
COPY ./requirements.txt /code/requirements.txt

# Install packages
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# copy project files
COPY ./main.py /code/main.py

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]

