# Python 3.9 sürümünü temel alan bir Docker image seçiyoruz
FROM python:3.9-slim

# Çalışma dizinini ayarlıyoruz
WORKDIR /app

# Gereksinim dosyasını (requirements.txt) kopyalıyoruz
COPY requirements.txt .

# Gereksinim dosyasındaki paketleri kuruyoruz
RUN pip install --no-cache-dir -r requirements.txt

# Uygulama kodunu konteynere kopyalıyoruz
COPY . .

# Uygulamayı çalıştırıyoruz (örneğin app.py ana dosyanızsa)
CMD ["python", "app.py"]
