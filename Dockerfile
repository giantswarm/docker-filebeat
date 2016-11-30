FROM alpine:3.4

RUN apk --no-cache add curl tar

WORKDIR /filebeat
RUN curl -sfS https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-5.0.2-linux-x86_64.tar.gz \
  | tar -xz --strip-components=1

CMD ["./filebeat", "-e", "-c=/etc/filebeat/filebeat.yml"]
