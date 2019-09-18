FROM gcc
COPY src/doh /usr/src/doh
WORKDIR /usr/src/doh
RUN make
ENTRYPOINT ["./doh"]
