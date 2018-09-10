FROM python:2.7
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
RUN chmod +x installer.sh && installer.sh
EXPOSE 5000
CMD python ./gen.py