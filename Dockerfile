FROM tiangolo/meinheld-gunicorn:python3.7
WORKDIR /app
COPY . /app
EXPOSE 80
ENV MODULE_NAME candycrash
ENV WORKERS_PER_CORE 1
RUN pip install -r requirements.txt
RUN echo "test"

# USE THIS COMMANDS TO RUN:
# docker build -t myimage ./
# docker run -p 80:80 -e MODULE_NAME="candycrash" -e WORKERS_PER_CORE="1" myimage

# OR
# docker build -t myimage ./ && docker run -p 80:80 -e MODULE_NAME="candycrash" -e WORKERS_PER_CORE="1" myimage