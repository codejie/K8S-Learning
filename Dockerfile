FROM node:lts-alpine3.18
RUN npm install -g typescript
VOLUME [ "/sources" ]
COPY --chmod=755 start.sh /start.sh
EXPOSE 4000
WORKDIR /sources
ENTRYPOINT [ "/start.sh" ]