FROM ubuntu:16.10

RUN apt-get update  \
    && apt-get install -y ffmpeg curl \
    && curl -sL https://deb.nodesource.com/setup_6.x | bash - \
    && apt-get install -y nodejs  \
    ## cleanup
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# test coming up
CMD ["http://n8rth.online/hello.txt?test-form-docker-ENTRYPOINT"]
ENTRYPOINT ["curl"]