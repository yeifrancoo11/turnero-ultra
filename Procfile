web: gunicorn -k uvicorn.workers.UvicornWorker app.main:app --bind 0.0.0.0:$PORT --workers 2 --timeout 120
