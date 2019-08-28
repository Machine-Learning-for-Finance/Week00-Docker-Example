FROM ubuntu:18.04
LABEL maintainer="Gary R. Engler, Ph.D. (gengler@stevens.edu)"

RUN apt-get update && \
	apt-get install -y \
		python3-dev \
	    python3-pip

RUN mkdir -p /app

COPY . /app

WORKDIR /app

CMD ["python3", "main.py"]
