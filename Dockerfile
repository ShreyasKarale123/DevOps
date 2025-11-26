FROM alpine:latest

RUN mkdir /shreyas_karale

RUN echo "This is my assignment submission" > shreyas_karale/DevOps

RUN ls -l /shreyas_karale

RUN date > /shreyas_karale/build_time.log

CMD ["cat", "/shreyas_karale/DevOps"]