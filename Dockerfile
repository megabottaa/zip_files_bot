FROM debian:latest



RUN apt update && apt upgrade -y

RUN apt install git curl python3-pip ffmpeg -y

RUN pip3 install -U pip

RUN cd /
RUN git clone https://github.com/megabottaa/zip_files_bot

RUN cd zip_files_bot

WORKDIR /zip_files_bot

RUN pip3 install -U -r requirements.txt

CMD python3 upload_files.py
