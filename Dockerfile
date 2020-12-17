FROM python:3.8
ENV PYTHONUNBUFFERED 1
ENV APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE 1

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get -y update

# Common dependency
RUN apt-get install -y postgresql-client gettext graphviz graphviz-dev binutils libproj-dev gdal-bin gettext cron nginx nodejs \
# for dlib
build-essential cmake \
# for opencv
libopencv-dev curl

RUN pip install --upgrade pip

# Deps for face recognition
RUN pip install dlib==19.21.0 opencv-python==4.4.0.44 tensorflow-cpu==2.3.1 numpy==1.18.5
