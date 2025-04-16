# 使用官方 Python 映像檔作為基底
FROM python:3.10

# 設定容器內的工作目錄
WORKDIR /app

# 複製本機所有檔案到容器
COPY . .

# 安裝相依套件
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# 預設執行 pytest 並產生 coverage
CMD ["pytest", "--cov=calculator", "--cov-report=term-missing"]
