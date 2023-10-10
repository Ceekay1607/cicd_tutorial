FROM ubuntu
MAINTAINER Cong Khanh "khanhb2012022@student.ctu.edu.vn"
RUN apt update -y
RUN apt install -y python3-pip python3-dev build-essential
ADD . /flask_app
WORKDIR /flask_app
RUN pip3 install flask
ENTRYPOINT ["python3"]
CMD ["flask_docker.py"]
