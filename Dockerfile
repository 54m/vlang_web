FROM 54mch4n/vlang:latest

LABEL maintainer="54m <54mch4n@f5.si>"

WORKDIR /opt/vlang/git/

RUN git clone https://github.com/54m/vlang_web

RUN v -prod ./vlang_web/main.v

EXPOSE 8081

ENTRYPOINT ["/opt/vlang/git/vlang_web/main"]

