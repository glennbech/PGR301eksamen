FROM python:3.9-slim
WORKDIR /app
COPY . /app
run pip3 install --no-cache-dir -r requirements.txt
ENV AWS_ACCESS_KEY_ID=default_key_id
ENV AWS_SECRET_ACCESS_KEY=default_secret_key
ENV BUCKET_NAME=defualt_value

CMD ["python", "app.py"]
