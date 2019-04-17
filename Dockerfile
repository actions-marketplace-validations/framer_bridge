FROM node:10-alpine

LABEL com.github.actions.name="GitHub Action for Framer"
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="gray-dark"

RUN apk add --update jq && rm -rf /var/cache/apk/*

RUN yarn global add framer-cli

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]