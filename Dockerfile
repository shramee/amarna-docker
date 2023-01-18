FROM python:3.7

ENV PIP_DISABLE_PIP_VERSION_CHECK=1
ENV PIP_NO_CACHE_DIR=1

RUN pip3 install wheel
RUN pip3 install amarna
WORKDIR /src
ENTRYPOINT amarna . -o out.sarif