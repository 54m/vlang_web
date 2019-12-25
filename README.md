# vlang_web
V言語で動作するWebサーバーのテストです

# Docker
Vは以下から取り込めます
```commandline
docker pull 54mch4n/vlang:latest
```
本リポジトリを動かすには
```commandline
docker run -p 8080:8081 --rm 54mch4n/vlang_web
```
`-p 8080:8081` でコンテナ内からローカルへポートフォワーディングしています。	