FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8

WORKDIR /app/
COPY requirement.txt  /app/requirements.txt
RUN pip install -r /app/requirements.txt

COPY server/app /app/app/
ENV PYTHONPATH=/app
EXPOSE 80

# docker build -t sample .
# docker images
# docker run  -it sample bash  

# curl localhost


# docker run --name sample  -p 8000:80 sample                