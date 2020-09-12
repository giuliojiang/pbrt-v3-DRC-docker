FROM ubuntu:20.04

ENV PATH="/miniconda/bin:${PATH}"
ARG DEBIAN_FRONTEND=noninteractive

COPY compile.sh /tmp/compile.sh

RUN /tmp/compile.sh

# CMD /bin/bash

CMD node /applocal/server/index.js & /applocal/demo.sh && echo "Demo render completed. Output in /output" && /bin/bash