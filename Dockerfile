# Python tabanlı bir Docker imajı kullan
FROM python:3.11-slim

# Çalışma dizinini belirle
WORKDIR /app

# Gereksinim dosyasını kopyala ve bağımlılıkları yükle
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Tüm dosyaları kopyala
COPY . .

# Uygulamanın çalışacağı port
EXPOSE 5000

# Başlatma komutu
CMD ["python", "app.py"]
