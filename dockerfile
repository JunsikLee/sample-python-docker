FROM python:3.10.1

#작업 폴더
WORKDIR /app

#APK 업데이트
RUN apt-get update
RUN apt-get upgrade

#필요 라이브러리 설치
RUN apt-get install -y libxml2-dev libxslt-dev
RUN apt-get install -y libpq-dev

RUN pip install pipenv

#Python 코드
COPY ./ ./

#Python 라이브러리 설치
#RUN pip install --no-cache-dir -r requirements.txt
RUN pipenv install

CMD [ "pipenv", "run", "python", "-u", "./src/main.py" ]
