# 使用官方Python映像作為基礎
FROM python:3.9

# 設置工作目錄
WORKDIR /workingdir

# 將本地文件添加到映像中
COPY /docker/basic /workingdir

# 安裝所需的依賴項
RUN pip install --no-cache-dir -r requirements.txt

# 暴露應用程序使用的端口
EXPOSE 80

# 定義默認命令
CMD ["python3", "hello.py"]

