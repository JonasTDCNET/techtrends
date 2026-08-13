FROM python:3.13

WORKDIR /app

COPY techtrends/requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY techtrends/ .

EXPOSE 3111

RUN python init_db.py

CMD ["python", "app.py"]