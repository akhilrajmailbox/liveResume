# Docker image for creating the gh-page artefact
FROM node:12.20.0
# RUN npm i angular-cli-ghpages --save-dev
COPY node_modules /opt/
COPY entrypoint.sh /usr/local/bin/
RUN chmod a+x /usr/local/bin/entrypoint.sh
ENTRYPOINT [ "entrypoint.sh" ]