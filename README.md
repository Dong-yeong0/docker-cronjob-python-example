# docker-cronjob-python-example

Example of executing a python cron job using a docker

## Run

```shell
docker-compose up -d
```

## Docker 컨테이너에서 cron 작업이 실행될 때 /etc/environment 파일이 바로 로드되지는 않습니다

cron은 일반적으로 컨테이너가 시작될 때 사용자 레벨의 환경으로 시작되므로, 해당 파일의 변경 사항은 즉시 적용되지 않을 수 있습니다.  

그래서 `start-cron.sh` file에 보시면 `printenv > /etc/environment` 명령어로 cron이 실행되기 전 env를 설정을 미리 해주어야 합니다

## Package Install

```shell
pip install -r requirements.txt
```
