FROM python:alpine3.7
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 5000
#CMD python ./index.py
ENTRYPOINT ["gunicorn"]
CMD ["--threads", "5", "--workers", "2", "--bind", "0.0.0.0:5000", "index:index"]
