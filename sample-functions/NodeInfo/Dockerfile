FROM alpine:latest
RUN apk --update add nodejs

ADD fwatchdog /usr/bin
# ADD https://github.com/alexellis/faas/releases/download/v0.3-alpha/fwatchdog /usr/bin
RUN chmod +x /usr/bin/fwatchdog

COPY package.json .
COPY main.js .
RUN npm i
ENV fprocess="node main.js"
ENV one_shot="true"

CMD ["fwatchdog"]
