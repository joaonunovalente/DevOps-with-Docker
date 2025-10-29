FROM docker:25-git

WORKDIR /mydir

COPY builder.sh .

RUN chmod +x builder.sh

RUN apk add bash

ENTRYPOINT ["bash", "./builder.sh"]