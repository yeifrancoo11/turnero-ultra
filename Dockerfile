
FROM python:3.11-slim
WORKDIR /app
ENV PYTHONDONTWRITEBYTECODE=1 PYTHONUNBUFFERED=1
COPY requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
COPY . /app
EXPOSE 8000
CMD ["gunicorn","-k","uvicorn.workers.UvicornWorker","app.main:app","--bind","0.0.0.0:8000","--workers","2","--timeout","120"]
