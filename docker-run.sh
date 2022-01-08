echo '도커 컨테이너 종료'
docker stop $(docker ps -a -q -f name=py-test)

echo '도커 컨테이너 삭제'
docker rm $(docker ps -a -q -f name=py-test)

echo '도커 컨테이너 시작'
docker run -d --name py-test-01 py-test pipenv run python -u ./src/main.py