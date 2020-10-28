FROM alpine:3.12.1
RUN apk add --no-cache wget tar
RUN wget https://github.com/buger/goreplay/releases/download/v1.2.0/gor_v1.2.0_x64.tar.gz \
&& tar -xvf gor_v1.2.0_x64.tar.gz \
&& rm gor_v1.2.0_x64.tar.gz \
&& mv gor /usr/local/bin/gor \
&& chmod +x /usr/local/bin/gor
ENTRYPOINT ["gor"]