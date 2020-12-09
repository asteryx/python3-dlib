FROM python:3.8
ENV PYTHONUNBUFFERED 1
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get -y update

# for dlib
RUN apt-get install -y build-essential cmake
# for opencv
RUN apt-get install -y libopencv-dev curl

# Common dependency
RUN apt-get install -y postgresql-client gettext graphviz graphviz-dev binutils libproj-dev gdal-bin cron nginx

# pip instlal
RUN pip install dlib==19.21.0 opencv-python==4.4.0.44

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs
