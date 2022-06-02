# Docker image for creating the gh-page artefact
FROM node:12.20.0
# RUN npm i angular-cli-ghpages --save-dev
COPY node_modules /opt/node_modules
COPY entrypoint.sh /usr/local/bin/
RUN chmod a+x /usr/local/bin/entrypoint.sh
CMD ["publish"]
ENTRYPOINT [ "entrypoint.sh" ]